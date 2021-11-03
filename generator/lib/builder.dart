import 'package:app_route_generator/src/app_route_generator.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'src/app_route_generator.dart';

Builder appRoute(BuilderOptions options) =>
    SharedPartBuilder([AppRouteGenerator()], 'app_route');
