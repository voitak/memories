final class AppMetaData {
  const AppMetaData({required this.version, required this.buildNumber});

  final String version;
  final String buildNumber;

  String get fullVersion => '$version($buildNumber)';
}
