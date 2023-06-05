


final String tableTextField = 'TextField';

class TextFieldFields {
  static final List<String> values = [
    /// Add all fields
    id,  quality,  description, time
  ];

  static final String id = '_id';

  static final String quality = 'Quality';

  static final String description = 'description';

  static final String time = 'time';

}




class TextFieldData {
  final int? id;
  final String quality;
  final String description;
  final String time;

  TextFieldData({
    this.id,
    required this.quality,
    required this.description,
    required this.time,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'quality': quality,
      'description': description,
      'time': time,
    };
  }

  factory TextFieldData.fromJson(Map<String, dynamic> json) {
    return TextFieldData(
      id: json['id'],
      quality: json['quality'],
      description: json['description'],
      time: json['time'],
    );
  }

  TextFieldData copy({
    int? id,
    String? quality,
    String? description,
    String? time,
  }) {
    return TextFieldData(
      id: id ?? this.id,
      quality: quality ?? this.quality,
      description: description ?? this.description,
      time: time ?? this.time,
    );
  }
}
