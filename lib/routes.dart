import 'package:routefly/routefly.dart';

import 'app/app_page.dart' as a0;
import 'app/home/home_page.dart' as a1;
import 'app/login/login_page.dart' as a2;
import 'app/reminders/add_reminder_page.dart' as a3;
import 'app/reminders/reminders_page.dart' as a4;

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
        key: '/reminders/add_reminder',
        uri: Uri.parse('/reminders/add_reminder'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a3.AddReminderPage(),
        ),
      ),
      RouteEntity(
        key: '/reminders',
        uri: Uri.parse('/reminders'),
        routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
          ctx,
          settings,
          const a4.RemindersPage(),
        ),
      ),
    ];

const routePaths = (
  path: '/',
  home: '/home',
  login: '/login',
  reminders: (
    path: '/reminders',
    addReminder: '/reminders/add_reminder',
  ),
);
