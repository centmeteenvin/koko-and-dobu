import 'package:auto_route/auto_route.dart';
import 'package:koko_and_dobu_flutter/router/router.gr.dart';

@AutoRouterConfig(deferredLoading: true, replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WelcomeRoute.page,
          path: '/welcome',
          initial: true,
        ),
      ];
}
