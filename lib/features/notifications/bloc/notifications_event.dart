part of 'notifications_bloc.dart';

@freezed
sealed class NotificationsEvent with _$NotificationsEvent {
  const NotificationsEvent._();

  const factory NotificationsEvent.initialize() = _InitializeNotificationsEvent;
}
