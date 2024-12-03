// ignore_for_file: avoid-dynamic
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:memories/app/logging/bloc_logging/bloc_log.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    handleBlocChange(bloc, change);
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    handleBlocError(bloc, error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}
