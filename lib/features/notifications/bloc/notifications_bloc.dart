// ignore_for_file: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/features/notifications/repository/notifications_repository.dart';

part 'notifications_bloc.freezed.dart';

part 'notifications_event.dart';

part 'notifications_state.dart';

part 'notifications_side_effect.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState>
    with
        BlocSideEffectMixin<NotificationsEvent, NotificationsState,
            NotificationsSideEffect> {
  NotificationsBloc({
    required NotificationsRepository repository,
  })  : _repository = repository,
        super(const NotificationsState.initial()) {
    on<NotificationsEvent>(
      (event, emitter) => event.map(
        initialize: (event) => _initialize(event, emitter),
      ),
    );
  }

  final NotificationsRepository _repository;

  Future<void> _initialize(
    _InitializeNotificationsEvent event,
    Emitter<NotificationsState> emitter,
  ) async {
    try {} on DioException catch (e, stackTrace) {
    } on Object catch (e, stackTrace) {}
  }
}
