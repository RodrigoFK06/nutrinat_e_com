import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cart =
          prefs.getStringList('ff_cart')?.map((path) => path.ref).toList() ??
              _cart;
    });
    _safeInit(() {
      _cartPriceSummary = prefs
              .getStringList('ff_cartPriceSummary')
              ?.map(double.parse)
              .toList() ??
          _cartPriceSummary;
    });
    _safeInit(() {
      _cartItems = prefs
              .getStringList('ff_cartItems')
              ?.map((x) {
                try {
                  return CartItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cartItems;
    });
    _safeInit(() {
      _shippingOptions = prefs
              .getStringList('ff_shippingOptions')
              ?.map((x) {
                try {
                  return ShippingOptionsStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _shippingOptions;
    });
    _safeInit(() {
      _ordersSummary =
          prefs.getStringList('ff_ordersSummary')?.map(double.parse).toList() ??
              _ordersSummary;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> value) {
    _cart = value;
    prefs.setStringList('ff_cart', value.map((x) => x.path).toList());
  }

  void addToCart(DocumentReference value) {
    cart.add(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeFromCart(DocumentReference value) {
    cart.remove(value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeAtIndexFromCart(int index) {
    cart.removeAt(index);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void updateCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cart[index] = updateFn(_cart[index]);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void insertAtIndexInCart(int index, DocumentReference value) {
    cart.insert(index, value);
    prefs.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  List<double> _cartPriceSummary = [];
  List<double> get cartPriceSummary => _cartPriceSummary;
  set cartPriceSummary(List<double> value) {
    _cartPriceSummary = value;
    prefs.setStringList(
        'ff_cartPriceSummary', value.map((x) => x.toString()).toList());
  }

  void addToCartPriceSummary(double value) {
    cartPriceSummary.add(value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void removeFromCartPriceSummary(double value) {
    cartPriceSummary.remove(value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartPriceSummary(int index) {
    cartPriceSummary.removeAt(index);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void updateCartPriceSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    cartPriceSummary[index] = updateFn(_cartPriceSummary[index]);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartPriceSummary(int index, double value) {
    cartPriceSummary.insert(index, value);
    prefs.setStringList('ff_cartPriceSummary',
        _cartPriceSummary.map((x) => x.toString()).toList());
  }

  List<CartItemStruct> _cartItems = [];
  List<CartItemStruct> get cartItems => _cartItems;
  set cartItems(List<CartItemStruct> value) {
    _cartItems = value;
    prefs.setStringList(
        'ff_cartItems', value.map((x) => x.serialize()).toList());
  }

  void addToCartItems(CartItemStruct value) {
    cartItems.add(value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void removeFromCartItems(CartItemStruct value) {
    cartItems.remove(value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCartItems(int index) {
    cartItems.removeAt(index);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void updateCartItemsAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    cartItems[index] = updateFn(_cartItems[index]);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCartItems(int index, CartItemStruct value) {
    cartItems.insert(index, value);
    prefs.setStringList(
        'ff_cartItems', _cartItems.map((x) => x.serialize()).toList());
  }

  List<ShippingOptionsStruct> _shippingOptions = [
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Evío express.\",\"description\":\"Recibe tu pedido en 40 minutos\",\"price\":\"10\"}')),
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Envío estandar\",\"description\":\"Recibe tu pedido en 2 horas\",\"price\":\"5\"}')),
    ShippingOptionsStruct.fromSerializableMap(jsonDecode(
        '{\"shippingName\":\"Envío gratis\",\"description\":\"Recoger en tienda\",\"price\":\"0\"}'))
  ];
  List<ShippingOptionsStruct> get shippingOptions => _shippingOptions;
  set shippingOptions(List<ShippingOptionsStruct> value) {
    _shippingOptions = value;
    prefs.setStringList(
        'ff_shippingOptions', value.map((x) => x.serialize()).toList());
  }

  void addToShippingOptions(ShippingOptionsStruct value) {
    shippingOptions.add(value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void removeFromShippingOptions(ShippingOptionsStruct value) {
    shippingOptions.remove(value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromShippingOptions(int index) {
    shippingOptions.removeAt(index);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void updateShippingOptionsAtIndex(
    int index,
    ShippingOptionsStruct Function(ShippingOptionsStruct) updateFn,
  ) {
    shippingOptions[index] = updateFn(_shippingOptions[index]);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInShippingOptions(int index, ShippingOptionsStruct value) {
    shippingOptions.insert(index, value);
    prefs.setStringList('ff_shippingOptions',
        _shippingOptions.map((x) => x.serialize()).toList());
  }

  String _IdCard = '';
  String get IdCard => _IdCard;
  set IdCard(String value) {
    _IdCard = value;
  }

  String _UUID4 = '';
  String get UUID4 => _UUID4;
  set UUID4(String value) {
    _UUID4 = value;
  }

  List<double> _avaliablecuantity1 = [];
  List<double> get avaliablecuantity1 => _avaliablecuantity1;
  set avaliablecuantity1(List<double> value) {
    _avaliablecuantity1 = value;
  }

  void addToAvaliablecuantity1(double value) {
    avaliablecuantity1.add(value);
  }

  void removeFromAvaliablecuantity1(double value) {
    avaliablecuantity1.remove(value);
  }

  void removeAtIndexFromAvaliablecuantity1(int index) {
    avaliablecuantity1.removeAt(index);
  }

  void updateAvaliablecuantity1AtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    avaliablecuantity1[index] = updateFn(_avaliablecuantity1[index]);
  }

  void insertAtIndexInAvaliablecuantity1(int index, double value) {
    avaliablecuantity1.insert(index, value);
  }

  List<double> _ordersSummary = [];
  List<double> get ordersSummary => _ordersSummary;
  set ordersSummary(List<double> value) {
    _ordersSummary = value;
    prefs.setStringList(
        'ff_ordersSummary', value.map((x) => x.toString()).toList());
  }

  void addToOrdersSummary(double value) {
    ordersSummary.add(value);
    prefs.setStringList(
        'ff_ordersSummary', _ordersSummary.map((x) => x.toString()).toList());
  }

  void removeFromOrdersSummary(double value) {
    ordersSummary.remove(value);
    prefs.setStringList(
        'ff_ordersSummary', _ordersSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromOrdersSummary(int index) {
    ordersSummary.removeAt(index);
    prefs.setStringList(
        'ff_ordersSummary', _ordersSummary.map((x) => x.toString()).toList());
  }

  void updateOrdersSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    ordersSummary[index] = updateFn(_ordersSummary[index]);
    prefs.setStringList(
        'ff_ordersSummary', _ordersSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInOrdersSummary(int index, double value) {
    ordersSummary.insert(index, value);
    prefs.setStringList(
        'ff_ordersSummary', _ordersSummary.map((x) => x.toString()).toList());
  }

  int _timeStamp = 0;
  int get timeStamp => _timeStamp;
  set timeStamp(int value) {
    _timeStamp = value;
  }

  String _suggestedNumber = '';
  String get suggestedNumber => _suggestedNumber;
  set suggestedNumber(String value) {
    _suggestedNumber = value;
  }

  double _checkoutSubtotal = 0.0;
  double get checkoutSubtotal => _checkoutSubtotal;
  set checkoutSubtotal(double value) {
    _checkoutSubtotal = value;
  }

  double _checkoutIGV = 0.0;
  double get checkoutIGV => _checkoutIGV;
  set checkoutIGV(double value) {
    _checkoutIGV = value;
  }

  double _checkoutTax = 0.0;
  double get checkoutTax => _checkoutTax;
  set checkoutTax(double value) {
    _checkoutTax = value;
  }

  double _checkoutDelivery = 0.0;
  double get checkoutDelivery => _checkoutDelivery;
  set checkoutDelivery(double value) {
    _checkoutDelivery = value;
  }

  double _checkoutTotal = 0.0;
  double get checkoutTotal => _checkoutTotal;
  set checkoutTotal(double value) {
    _checkoutTotal = value;
  }

  String _numberToText = '';
  String get numberToText => _numberToText;
  set numberToText(String value) {
    _numberToText = value;
  }

  String _ReportPDF = '';
  String get ReportPDF => _ReportPDF;
  set ReportPDF(String value) {
    _ReportPDF = value;
  }

  String _SunatPDF = '';
  String get SunatPDF => _SunatPDF;
  set SunatPDF(String value) {
    _SunatPDF = value;
  }

  double _TotalAmountMercadoPago = 0.0;
  double get TotalAmountMercadoPago => _TotalAmountMercadoPago;
  set TotalAmountMercadoPago(double value) {
    _TotalAmountMercadoPago = value;
  }

  final _productListManager = StreamRequestManager<List<ProductsRecord>>();
  Stream<List<ProductsRecord>> productList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ProductsRecord>> Function() requestFn,
  }) =>
      _productListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductListCache() => _productListManager.clear();
  void clearProductListCacheKey(String? uniqueKey) =>
      _productListManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
