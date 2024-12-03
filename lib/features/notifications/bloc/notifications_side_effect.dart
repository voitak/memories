part of 'notifications_bloc.dart';

@freezed
sealed class NotificationsSideEffect with _$NotificationsSideEffect {
  const NotificationsSideEffect._();

  const factory NotificationsSideEffect.error() = _ErrorNotificationsSideEffect;
}
