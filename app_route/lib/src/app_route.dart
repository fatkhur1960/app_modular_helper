import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:meta/meta_meta.dart';

@immutable
@Target({TargetKind.field})
abstract class ArgType extends Equatable {
  const ArgType();

  @override
  List<Object?> get props => [];
}

class ArgData extends ArgType {
  final List<String> keys;
  const ArgData(this.keys);

  @override
  List<Object?> get props => keys;
}

class ArgParam extends ArgType {
  final List<String> keys;
  const ArgParam(this.keys);

  @override
  List<Object?> get props => keys;
}

@immutable
@Target({TargetKind.field, TargetKind.topLevelVariable})
class AppRoutePage {
  /// Provide Child View to the Route
  final Object child;

  /// Provide args to the Child View
  /// Available arg types: [ArgData, ArgParam]
  final ArgType? args;

  const AppRoutePage({required this.child, this.args});
}

@immutable
@Target({TargetKind.field, TargetKind.method})
class RegisterBlocs {
  final List<Object> blocs;

  /// Provide BlocProvider to the Child View
  const RegisterBlocs(this.blocs);
}

@immutable
@Target({TargetKind.classType})
class AppRoute {
  const AppRoute();
}

@immutable
@Target({TargetKind.classType})
class RouteModule {
  final String name;

  /// `name` parameter should be same as the getter declaration name
  /// and must be starts with `/`.
  const RouteModule(this.name);
}

@immutable
@Target({TargetKind.method})
class ModulePage<T extends Object> {
  final String name;
  final T child;
  /// Create Route Page module
  /// With params route `name`, and `child` widget.
  const ModulePage(this.name, this.child);
}

@immutable
@Target({TargetKind.getter})
class AppRouteModule {
  const AppRouteModule();
}

@immutable
@Target({TargetKind.parameter})
class Arg {
  final String name;

  const Arg(this.name);
}
