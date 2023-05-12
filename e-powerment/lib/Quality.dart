
import 'package:e_empowerment/globals.dart';

final String tableQuality = 'Quality';

class QualityFields {
  static final List<String> values = [
    /// Add all fields
    id,  quality,  idQuality
  ];

  static final String id = '_id';

  static final String quality = 'Quality';

  static final String idQuality = 'idQuality';


}





class Quality {
  final int? id;
  final int idQuality;
  final String quality;

  const Quality({
    this.id,
    required this.idQuality,
    required this.quality,



  });
  Quality copy({
    int? id,
    int? idQuality,

    String? quality,

  }) =>
      Quality(
        id: id ?? this.id,
        idQuality: idQuality ?? this.idQuality,

        quality: quality ?? this.quality,

      );

  static Quality fromJson(Map<String, Object?> json) => Quality(
    id: json[QualityFields.id] as int?,
    idQuality: json[QualityFields.idQuality] as int,
    quality: json[QualityFields.quality] as String,


  );

  Map<String, Object?> toJson() => {
    QualityFields.id: id,

    QualityFields.idQuality: idQuality,
    QualityFields.quality: quality,
  };
}




