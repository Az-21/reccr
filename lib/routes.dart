import 'package:go_router/go_router.dart';
import 'package:reccr/home/home_page.dart';

final router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const HomePage(), routes: []),
]);