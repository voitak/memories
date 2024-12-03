part of 'notifications_bloc.dart';

@freezed
sealed class NotificationsState with _$NotificationsState {
  const NotificationsState._();

  const factory NotificationsState.initial() = _InitialNotificationsState;

  const factory NotificationsState.loading() = _LoadingNotificationsState;

  const factory NotificationsState.idle() = _IdleNotificationsState;

  const factory NotificationsState.error({
    required String message,
  }) = _ErrorNotificationsState;

  bool get isInitial => maybeMap(
        initial: (_) => true,
        orElse: () => false,
      );

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  bool get isIdle => maybeMap(
        idle: (_) => true,
        orElse: () => false,
      );
      
  bool get isError => maybeMap(
        error: (_) => true,
        orElse: () => false,
      );

  String? get errorMessage => mapOrNull(
        error: (state) => state.message,
      );
}
