import 'package:intl/intl.dart';

String formatTime(DateTime datetime) {
  final DateFormat formatter = DateFormat('hh:mm a');
  final String formatted = formatter.format(datetime);
  return formatted;
}
