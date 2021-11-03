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
@Target({TargetKind.field})
class AppRoutePage {
  /// Provide Child View to the Route
  final Object child;

  /// Provide args to the Child View
  /// Available arg types: [ArgData, ArgParam]
  final ArgType? args;

  const AppRoutePage({required this.child, this.args});
}

@immutable
@Target({TargetKind.field})
/// Provide BlocProvider to the Child View
class RegisterBlocs {
  final List<Object> blocs;

  const RegisterBlocs(this.blocs);
}

@immutable
@Target({TargetKind.classType})
class AppRoute {
  const AppRoute();
}