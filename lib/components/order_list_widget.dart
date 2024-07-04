import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_orders/empty_orders_widget.dart';
import '/dropdowns/dropdown_menu/dropdown_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'order_list_model.dart';
export 'order_list_model.dart';

class OrderListWidget extends StatefulWidget {
  const OrderListWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
    this.parameter6,
  });

  final String? parameter1;
  final String? parameter2;
  final List<OrdersRecord>? parameter3;
  final String? parameter4;
  final int? parameter5;
  final String? parameter6;

  @override
  State<OrderListWidget> createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget>
    with TickerProviderStateMixin {
  late OrderListModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderListModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 50.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentUserReference != null,
      child: StreamBuilder<List<OrdersRecord>>(
        stream: queryOrdersRecord(
          queryBuilder: (ordersRecord) => ordersRecord
              .where(
                'userPurchased',
                isEqualTo: currentUserReference,
              )
              .orderBy('created_at', descending: true),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<OrdersRecord> orderListOrdersRecordList = snapshot.data!;
          if (orderListOrdersRecordList.isEmpty) {
            return const Center(
              child: SizedBox(
                width: 300.0,
                height: 350.0,
                child: EmptyOrdersWidget(
                  title: 'Sin pedidos',
                  bodyText: 'No tienes pedidos? ve y compra algunos productos!',
                ),
              ),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: orderListOrdersRecordList.length,
            itemBuilder: (context, orderListIndex) {
              final orderListOrdersRecord =
                  orderListOrdersRecordList[orderListIndex];
              return Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'orderHistory_Details',
                      queryParameters: {
                        'orderRef': serializeParam(
                          orderListOrdersRecord,
                          ParamType.Document,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'orderRef': orderListOrdersRecord,
                      },
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x520E151B),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  orderListOrdersRecord.name,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .headlineMediumFamily),
                                      ),
                                ),
                              ),
                              Text(
                                formatNumber(
                                  orderListOrdersRecord.amount,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.automatic,
                                  currency: 'S/.',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                              Builder(
                                builder: (context) => Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    hoverColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    hoverIconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      await showAlignedDialog(
                                        barrierColor: Colors.transparent,
                                        context: context,
                                        isGlobal: false,
                                        avoidOverflow: true,
                                        targetAnchor:
                                            const AlignmentDirectional(-1.0, 1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        followerAnchor:
                                            const AlignmentDirectional(-1.0, -1.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        builder: (dialogContext) {
                                          return Material(
                                            color: Colors.transparent,
                                            child: DropdownMenuWidget(
                                              orderRef: orderListOrdersRecord,
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 8.0),
                            child: Text(
                              'Pedido el: ${dateTimeFormat(
                                'd/M',
                                orderListOrdersRecord.createdAt,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                  ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 8.0),
                                child: Text(
                                  'Cantidad de productos: ${orderListOrdersRecord.itemsOrdered.length.toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily),
                                      ),
                                ),
                              ),
                              Container(
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: () {
                                    if (orderListOrdersRecord.status ==
                                        'Pendiente') {
                                      return FlutterFlowTheme.of(context)
                                          .accent3;
                                    } else if (orderListOrdersRecord.status ==
                                        'Atendido') {
                                      return FlutterFlowTheme.of(context)
                                          .accent2;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .accent1;
                                    }
                                  }(),
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: () {
                                      if (orderListOrdersRecord.status ==
                                          'Pendiente') {
                                        return FlutterFlowTheme.of(context)
                                            .tertiary;
                                      } else if (orderListOrdersRecord.status ==
                                          'Atentido') {
                                        return FlutterFlowTheme.of(context)
                                            .secondary;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      }
                                    }(),
                                    width: 2.0,
                                  ),
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Text(
                                    orderListOrdersRecord.status,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: () {
                                            if (orderListOrdersRecord.status ==
                                                'Pending') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .tertiary;
                                            } else if (orderListOrdersRecord
                                                    .status ==
                                                'Accepted') {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondary;
                                            } else {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primary;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              );
            },
          );
        },
      ),
    );
  }
}
