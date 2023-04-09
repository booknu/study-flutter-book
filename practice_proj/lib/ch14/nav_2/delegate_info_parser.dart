import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    /// [RouterDelegate] 와 [RouteInformationParser] 를 등록
    return MaterialApp.router(
      routerDelegate: MyRouterDelegate(),
      routeInformationParser: MyRouteInformationParser(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final ValueChanged<String> onPressed;

  const HomeScreen({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Home Screen',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              ElevatedButton(
                onPressed: () => onPressed('1'),
                child: const Text('Go detail with 1'),
              ),
              ElevatedButton(
                onPressed: () => onPressed('2'),
                child: const Text('Go detail with 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String? id;

  const DetailScreen({this.id, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Text(
            'Detail Screen $id',
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}

/// 개발자가 직접 정의한 [RoutePath] 정보
class MyRoutePath {
  String? id;

  MyRoutePath.home() : id = null;

  MyRoutePath.detail(this.id);
}

/// 라우팅 정보 분석 : 처음 앱이 실행될 때, 라우팅 될 때 정보 분석
/// 라우팅 정보 저장 : 라우팅 결정 후 현재 라우팅 상태 저장
class MyRouteInformationParser extends RouteInformationParser<MyRoutePath> {
  /// 반드시 override
  /// [routeInformation] : 플랫폼에서 앱에 전달한 라우팅 정보 (앱의 경우 대부분 `null`, 웹은 `URL`)
  @override
  Future<MyRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');
    print('routeInformation.location : ${routeInformation.location}');

    if (uri.pathSegments.length >= 2) {
      var remaining = uri.pathSegments[1];
      return MyRoutePath.detail(remaining);
    } else {
      return MyRoutePath.home();
    }
  }

  /// 선택적으로 override
  ///
  /// 앱의 현재 라우팅 상태 저장
  ///
  /// [RouterDelegate] 에서 특정 화면 이동이 결정되면 자동 호출
  ///
  /// [return] : 저장할 정보를 담고 있는 [RouteInformation]
  @override
  RouteInformation? restoreRouteInformation(MyRoutePath configuration) {
    print('[restoreRouteInformation] configuration.id: ${configuration.id}');

    if (configuration.id == null) {
      return const RouteInformation(location: '/');
    } else {
      return RouteInformation(location: '/detail/${configuration.id}');
    }
  }
}


/// [RoutePath] 를 분석해 적절하게 라우팅하는 [Navigator] 만들어줌
class MyRouterDelegate extends RouterDelegate<MyRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRoutePath> {
  ///
  String? selectId;

  /// [navigatorKey] getter 는 override 대상임
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// 상황에 맞는 [Page] 를 포함하는 [Navigator] 반환
  /// ([Navigator] 의 구성대로 화면 출력)
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          child: HomeScreen(
            onPressed: _handleOnPressed,
          ),
        ),
        if (selectId != null) MaterialPage(child: DetailScreen(id: selectId))
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        selectId = null;
        notifyListeners();
        return true;
      },
    );
  }

  @override
  /// 선택적으로 override.
  /// [build] 호출 직전 자동으로 호출됨.
  /// 만들어진 [RoutePath] 가 [RouteInformationParser] 의 [restoreRouteInformation()] 맙수에 전달됨.
  /// 즉, 라우팅 때마다 호출되는 이 함수에서 만든 정보가 앱의 라우팅 정보로 저장됨
  MyRoutePath? get currentConfiguration {
    if (selectId != null) {
      return MyRoutePath.detail(selectId);
    }

    return MyRoutePath.home();
  }

  /// 필수적으로 override.
  /// [RouterDelegate] 초기화 시 한 번만 호출.
  /// 전달된 [RoutePath] 는 [RouteInformationParser] 의 [parseRouteInformation] 의 반환값.
  @override
  Future<void> setNewRoutePath(MyRoutePath configuration) async {
    if (configuration.id != null) {
      selectId = configuration.id;
    }
  }

  /// [notifyListeners()] 를 호출하여 화면 전환
  void _handleOnPressed(String id) {
    selectId = id;
    notifyListeners();
  }
}
