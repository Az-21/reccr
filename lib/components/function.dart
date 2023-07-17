import 'package:reccr/components/drawer.dart';

String generateDestinationRoute(PageEnum id) {
  if (id == PageEnum.home) return "/";
  return "/${id.name}";
}
