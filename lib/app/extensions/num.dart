import 'package:intl/intl.dart';

extension NumExtensions on num {
  String get formatted => NumberFormat().format(this);
}
