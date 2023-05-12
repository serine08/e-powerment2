

final String tableQuality = 'Competence';

class CompetencesFields {
  static final List<String> values = [
    /// Add all fields
    id,  competence,  idCompetence
  ];

  static final String id = '_id';

  static final String competence = 'competence';

  static final String idCompetence = 'idCompetence';


}





class Competence {
  final int? id;
  final int idCompetence;
  final String competence;

  const Competence({
    this.id,
    required this.idCompetence,
    required this.competence,



  });

  Competence copy({
    int? id,
    int? idCompetence,

    String? competence,

  }) =>
      Competence(
        id: id ?? this.id,
        idCompetence: idCompetence ??  this.idCompetence,
        competence: competence ?? this.competence,

      );

  static Competence fromJson(Map<String, Object?> json) => Competence(
    id: json[CompetencesFields.id] as int?,
    idCompetence: json[CompetencesFields.idCompetence] as int,
    competence: json[CompetencesFields.competence] as String,


  );

  Map<String, Object?> toJson() => {

    CompetencesFields.id: id,
    CompetencesFields.idCompetence: idCompetence,
    CompetencesFields.competence: competence,

  };



}




