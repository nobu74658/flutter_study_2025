import 'package:freezed_annotation/freezed_annotation.dart';

const dateTimeStringConverterConverter = DateTimeStringConverterConverter();

class DateTimeStringConverterConverter
    implements JsonConverter<DateTime?, Object> {
  const DateTimeStringConverterConverter();

  @override
  DateTime? fromJson(Object json) {
    if (json is DateTime) {
      return json;
    }
    return null;
  }

  @override
  String toJson(DateTime? object) {
    return object.toString();
  }
}
