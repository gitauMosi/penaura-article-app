import 'package:intl/intl.dart';

String formatDate(DateTime dateTime) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd'); // Customize the format as needed
  return formatter.format(dateTime);
}