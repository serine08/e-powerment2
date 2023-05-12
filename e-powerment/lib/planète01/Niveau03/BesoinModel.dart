
import 'package:e_empowerment/globals.dart';

final String tableBesoin = 'Besoin';

class BesoinFields {
  static final List<String> values = [
    /// Add all fields
    id,  besoin,  idBesoin
  ];

  static final String id = '_id';

  static final String besoin = 'besoin';

  static final String idBesoin = 'idBesoin';


}





class Besoin {
  final int? id;
  final int idBesoin;
  final String besoin;

  const Besoin({
    this.id,
    required this.idBesoin,
    required this.besoin,



  });
  Besoin copy({
    int? id,
    int? idBesoin,

    String? besoin,

  }) =>
      Besoin(
        id: id ?? this.id,
        idBesoin: idBesoin ?? this.idBesoin,

        besoin: besoin ?? this.besoin,

      );

  static Besoin fromJson(Map<String, Object?> json) => Besoin(
    id: json[BesoinFields.id] as int?,
    idBesoin: json[BesoinFields.idBesoin] as int,
    besoin: json[BesoinFields.besoin] as String,


  );

  Map<String, Object?> toJson() => {
    BesoinFields.id: id,

    BesoinFields.idBesoin: idBesoin,
    BesoinFields.besoin: besoin,
  };
}




