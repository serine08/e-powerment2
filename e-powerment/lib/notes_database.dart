import 'package:e_empowerment/Humeur.dart';
import 'package:e_empowerment/Pens%C3%A9es.dart';
import 'package:e_empowerment/Quality.dart';
import 'package:e_empowerment/db_test.dart';
import 'package:e_empowerment/notes.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau03/BesoinModel.dart';
import 'package:e_empowerment/plan%C3%A8te01/Niveau2/Competence.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase._init();

  static Database? _database;

  NotesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('notes.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER NOT NULL';

    await db.execute('''
    CREATE TABLE $tableNotes ( 
      ${NoteFields.id} $idType, 
      ${NoteFields.isImportant} $boolType,
      ${NoteFields.number} $integerType,
      ${NoteFields.title} $textType,
      ${NoteFields.description} $textType,
      ${NoteFields.time} $textType
      )
        
      ''');

    await db.execute("CREATE TABLE Humeur(_id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT NOT NULL, Rating INTEGER NOT NULL)");
    await db.execute("CREATE TABLE Quality(_id INTEGER PRIMARY KEY AUTOINCREMENT, Quality TEXT , idQuality INTEGER)");
    await db.execute("CREATE TABLE Competence(_id INTEGER PRIMARY KEY AUTOINCREMENT, competence TEXT , idCompetence INTEGER)");
    await db.execute("CREATE TABLE Besoin(_id INTEGER PRIMARY KEY AUTOINCREMENT, besoin TEXT , idBesoin INTEGER)");


    await db.execute('''
CREATE TABLE $tablePensee ( 
  ${PenseeFields.id} $idType, 

  ${PenseeFields.RatingP} $integerType,
 
  ${PenseeFields.date} $textType
  )
  
''');



  }

  Future<Note> create(Note note) async {
    final db = await instance.database;

    // final json = note.toJson();
    // final columns =
    //     '${NoteFields.title}, ${NoteFields.description}, ${NoteFields.time}';
    // final values =
    //     '${json[NoteFields.title]}, ${json[NoteFields.description]}, ${json[NoteFields.time]}';
    // final id = await db
    //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');

    final id = await db.insert(tableNotes, note.toJson());
    return note.copy(id: id);
  }
/*------------------------------------------------------------------------------------*/
  Future<Humeur> createH(Humeur humeur) async {
    final db = await instance.database;
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER NOT NULL';



    // final json = note.toJson();
    // final columns =
    //     '${NoteFields.title}, ${NoteFields.description}, ${NoteFields.time}';
    // final values =
    //     '${json[NoteFields.title]}, ${json[NoteFields.description]}, ${json[NoteFields.time]}';
    // final id = await db
    //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');
if(db.isOpen) {
  final id = await db.insert(tableHumeur, humeur.toJson());
  return humeur.copy(id: id);

}
else return humeur;
  }


  Future<Quality> createQ(Quality qualite) async {
    final db = await instance.database;



    if(db.isOpen) {
      final id = await db.insert("Quality", qualite.toJson());
      return qualite.copy(id: id);

    }
    else return qualite;
  }
  Future<void> deleteQ(int id) async {
    final db = await instance.database;
    if(db.isOpen) {
      await db.delete("Quality", where: "idQuality = ?", whereArgs: [id]);
    }
  }
  Future<Quality?> getQualityByValue(String value) async {
    final db = await instance.database;
    if (db.isOpen) {
      final List<Map<String, dynamic>> maps = await db.query(
        'Quality',
        where: 'quality = ?',
        whereArgs: [value],
      );
      if (maps.isNotEmpty) {
        return Quality.fromJson(maps.first);
      }
    }
    return null;
  }


  Future<List<Quality>> readAllQuality() async {
    final db = await instance.database;

    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query("Quality");

    return result.map((json) => Quality.fromJson(json)).toList();
  }






  Future<Competence> createC(Competence competence) async {
    final db = await instance.database;



    if(db.isOpen) {

      final id = await db.insert("Competence", competence.toJson());
      return competence.copy(id: id);

    }
    else return competence;
  }
  Future<void> deleteC(int id ) async {
    final db = await instance.database;
    if(db.isOpen) {
      await db.delete("Competence", where: "competence = ?", whereArgs: [id]);
    }
  }
  Future<Competence?> getCompetenceByValue(String value) async {
    final db = await instance.database;
    if (db.isOpen) {
      final List<Map<String, dynamic>> maps = await db.query(
        'Competence',
        where: 'competence = ?',
        whereArgs: [value],
      );
      if (maps.isNotEmpty) {
        return Competence.fromJson(maps.first);
      }
    }
    return null;
  }

  Future<List<Competence>> readAllCompetence() async {
    final db = await instance.database;


    final result = await db.query("Competence");



    return result.map((json) => Competence.fromJson(json)).toList();
  }







  Future<Besoin> createB(Besoin besoin) async {
    final db = await instance.database;



    if(db.isOpen) {

      final id = await db.insert("Besoin", besoin.toJson());
      return besoin.copy(id: id);

    }
    else return besoin;
  }

  Future<void> deleteB(int id) async {
    final db = await instance.database;
    if(db.isOpen) {
      await db.delete("Besoin", where: "idBesoin = ?", whereArgs: [id]);
    }
  }
  Future<Besoin?> getBesoinByValue(String value) async {
    final db = await instance.database;
    if (db.isOpen) {
      final List<Map<String, dynamic>> maps = await db.query(
        'Besoin',
        where: 'besoin = ?',
        whereArgs: [value],
      );
      if (maps.isNotEmpty) {
        return Besoin.fromJson(maps.first);
      }
    }
    return null;
  }

  Future<List<Besoin>> readAllBesoin() async {
    final db = await instance.database;


    final result = await db.query("Besoin");



    return result.map((json) => Besoin.fromJson(json)).toList();
  }
/*------------------------------------------------------------------------------------------*/

  Future<Pensee> createP(Pensee pensee) async {
    final db = await instance.database;
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER NOT NULL';



    // final json = note.toJson();
    // final columns =
    //     '${NoteFields.title}, ${NoteFields.description}, ${NoteFields.time}';
    // final values =
    //     '${json[NoteFields.title]}, ${json[NoteFields.description]}, ${json[NoteFields.time]}';
    // final id = await db
    //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');
    if(db.isOpen) {
      final id = await db.insert(tablePensee, pensee.toJson());
      return pensee.copy(id: id);

    }
    else return pensee;
  }
  /*-----------------------------------------------------------------------------------------------*/
  Future<Note> readNote(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableNotes,
      columns: NoteFields.values,
      where: '${NoteFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Note.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }
/*-----------------------------------------------------------------------------------------------*/
  Future<Humeur> readHumeur(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableHumeur,
      columns: HumeurFields.values,
      where: '${HumeurFields.id} = ?',
      whereArgs: [id],

    );

    if (maps.isNotEmpty) {
      return Humeur.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }
  //-------------------------------------------------------------------------------------


  Future<Humeur> readPensee(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableHumeur,
      columns: HumeurFields.values,
      where: '${HumeurFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Humeur.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }
  //----------------------------------------------------------------------------------
  Future<List<Note>> readAllNotes() async {
    final db = await instance.database;

    final orderBy = '${NoteFields.time} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query(tableNotes, orderBy: orderBy);

    return result.map((json) => Note.fromJson(json)).toList();
  }
  //-------------------------------------------------------------- Read Humeur by week
  Future<List<Humeur>> ReadAllHumeur() async {
    final db = await instance.database;

    final orderBy = '${HumeurFields.id} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query(tableHumeur, orderBy: orderBy  );

    return result.map((json) => Humeur.fromJson(json)).toList();
  }

  //--------------------------------------------------

  Future<List<Pensee>> ReadAllPensee() async {
    final db = await instance.database;

    final orderBy = '${PenseeFields.id} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query(tablePensee, orderBy: orderBy  );

    return result.map((json) => Pensee.fromJson(json)).toList();
  }


  //-----------------------------------------------------------



  Future<int> update(Note note) async {
    final db = await instance.database;

    return db.update(
      tableNotes,
      note.toJson(),
      where: '${NoteFields.id} = ?',
      whereArgs: [note.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableNotes,
      where: '${NoteFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}