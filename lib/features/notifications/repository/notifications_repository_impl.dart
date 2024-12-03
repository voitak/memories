import 'package:memories/features/notifications/clients/notifications_rest_client.dart';
import 'package:memories/features/notifications/repository/notifications_repository.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  NotificationsRepositoryImpl({required this.client});

  final NotificationsRestClient client;
}
