import 'package:intl/intl.dart';

class Note {
  final int _id;
  final String _title;
  final String _content;
  final String _imagePath;

  Note(this._id, this._title, this._content, this._imagePath);

  int get id => _id;
  String get title => _title;
  String get content => _content;
  String get imagePath => _imagePath;

  String get date {
    final date = DateTime.fromMillisecondsSinceEpoch(id);
    return DateFormat('EEE h:mm a, dd/MM/yyyy').format(date);
  }
}
