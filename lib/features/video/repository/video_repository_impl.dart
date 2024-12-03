import 'package:memories/features/video/clients/video_rest_client.dart';
import 'package:memories/features/video/repository/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository {
  VideoRepositoryImpl({required this.client});

  final VideoRestClient client;
}
