import 'package:uuid/uuid.dart';

class Comic {
  String? id;
  String? number;

  Comic({
    this.id,
    this.number,
  });

  Comic.newTodo() {
    id = const Uuid().v4();
    number = '';
  }

  assignUUID() {
    id = const Uuid().v4();
  }

  factory Comic.fromMap(Map<String, dynamic> json) => Comic(
        id: json["id"],
        number: json["number"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "number": number,
      };
}
