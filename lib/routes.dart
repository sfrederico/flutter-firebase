import 'package:routefly/routefly.dart';

import 'app/app_page.dart' as a0;
import 'app/home/home_page.dart' as a1;
import 'app/login/login_page.dart' as a2;
import 'app/metricas/metricas_page.dart' as a3;

List<RouteEntity> get routes => [
  RouteEntity(
    key: '/',
    uri: Uri.parse('/'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a0.AppPage(),
    ),
  ),
  RouteEntity(
    key: '/home',
    uri: Uri.parse('/home'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a1.HomePage(),
    ),
  ),
  RouteEntity(
    key: '/login',
    uri: Uri.parse('/login'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a2.LoginPage(),
    ),
  ),
  RouteEntity(
    key: '/metricas',
    uri: Uri.parse('/metricas'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a3.MetricasPage(),
    ),
  ),
];

const routePaths = (
  path: '/',
  home: '/home',
  login: '/login',
  metricas: '/metricas',
);
