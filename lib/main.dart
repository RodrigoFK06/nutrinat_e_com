import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  await initFirebase();

  await FlutterFlowTheme.initialize();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  late Stream<BaseAuthUser> userStream;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = nutrinatEComFirebaseUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });
    jwtTokenStream.listen((_) {});
    Future.delayed(
      const Duration(milliseconds: 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'NUTRINAT E-COM',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('es'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, this.initialPage, this.page});

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'mainHomeAdmin';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'mainHomePage': const MainHomePageWidget(),
      'mainFavorites': const MainFavoritesWidget(),
      'mainOrderHistory': const MainOrderHistoryWidget(),
      'mainProfile': const MainProfileWidget(),
      'mainHomeAdmin': const MainHomeAdminWidget(),
      'mainUserManager': const MainUserManagerWidget(),
      'mainProductManager': const MainProductManagerWidget(),
      'mainordersmanager': const MainordersmanagerWidget(),
      'mainMaterialManager': const MainMaterialManagerWidget(),
      'mainProduction': const MainProductionWidget(),
      'mainProductInventory': const MainProductInventoryWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: Colors.white,
        selectedItemColor: FlutterFlowTheme.of(context).primary,
        unselectedItemColor: const Color(0x8A000000),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_list_bulleted_rounded,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history_rounded,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_add,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.production_quantity_limits,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pending_actions,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.factory_sharp,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inventory,
              size: 24.0,
            ),
            label: '__',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
