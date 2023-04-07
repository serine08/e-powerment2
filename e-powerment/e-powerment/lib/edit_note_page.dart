import 'dart:io';

import 'package:e_empowerment/notes.dart';
import 'package:e_empowerment/notes_database.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/onboarding_screen.dart';
import 'package:e_empowerment/widget/note_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';



class AddEditNotePage extends StatefulWidget {
  final Note? note;



  const AddEditNotePage({
    Key? key,
    this.note,
  }) : super(key: key);
  @override
  _AddEditNotePageState createState() => _AddEditNotePageState();
}

class _AddEditNotePageState extends State<AddEditNotePage> {
  final _formKey = GlobalKey<FormState>();
  late bool isImportant;
  late int number;
  late String title;
  late String description;



  @override
  void initState() {
    super.initState();

    isImportant = widget.note?.isImportant ?? false;
    number = widget.note?.number ?? 0;
    title = widget.note?.title ?? '';
    description = widget.note?.description ?? '';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
backgroundColor: Colors.white,

    appBar: AppBar(
  actions: [buildButton()],


    ),
    body: Form(

     key: _formKey,

      child: Column(
        children: [
          NoteFormWidget(
            isImportant: isImportant,
            number: number,
            title: title,
            description: description,
            onChangedImportant: (isImportant) =>
                setState(() => this.isImportant = isImportant),
            onChangedNumber: (number) => setState(() => this.number = number),
            onChangedTitle: (title) => setState(() => this.title = title),
            onChangedDescription: (description) =>
                setState(() => this.description = description),
          ),
          const SizedBox(
            height: 40,
          ),

          CustomButtonG(
              title: 'Galerie',
              icon: Icons.image_outlined,
              onClick: () {  }
          ),
          CustomButtonG(
              title: 'Appareil Photo',
              icon: Icons.camera,
              onClick: () {  }
          ),


        ],
      ),

    ),
    bottomNavigationBar: Container(
      // how to play with colors  type: BottomNavigationBarType.fixed, // This is all you need!

      color: Colors.deepPurple.shade100,
      child:  Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20.0 ,vertical: 5),
        child: GNav(

          tabBorderRadius: 15,
          duration: const Duration(milliseconds: 800),
          backgroundColor: Colors.deepPurple.shade100 ,
          color: Colors.grey[800],
          iconSize: 24,

          activeColor: Colors.deepPurple,
          tabBackgroundColor: Colors.deepPurple.withOpacity(0.1),
          gap: 8,

          // here where it ends
          padding: const EdgeInsets.all(16),
          tabs:  [
            GButton(

              icon: Icons.image_outlined,


              onPressed:(){

                Navigator.of(context).push(DismissibleDialog<void>());
              },
            ),
            GButton(

              icon: Icons.voice_chat,


              onPressed:(){

                Navigator.push(context, MaterialPageRoute(builder: (context){

                  return   const OnBoardScreen();
                },),);
              },
            ),
            GButton(

              icon: Icons.music_note_outlined,

              onPressed:(){

                Navigator.push(context, MaterialPageRoute(builder: (context){

                  return   const HiddenDrawer();
                },),);
              },

            ),

          ],
        ),
      ),
    ),
  );

  Widget buildButton() {
    final isFormValid = title.isNotEmpty && description.isNotEmpty;

    return Padding(

      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: isFormValid ? null : Colors.deepPurple.shade800,
        ),
        onPressed: addOrUpdateNote,
        child: const Row(
          children: [
            Icon(Icons.check),
            SizedBox(
              width: 5,
            ),
            Text("Save")
          ],),
      ),
    );
  }



  void addOrUpdateNote() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final isUpdating = widget.note != null;

      if (isUpdating) {
        await updateNote();
      } else {
        await addNote();
      }

      Navigator.of(context).pop();
    }
  }

  Future updateNote() async {
    final note = widget.note!.copy(
      isImportant: isImportant,
      number: number,
      title: title,
      description: description,
    );

    await NotesDatabase.instance.update(note);
  }

  Future addNote() async {
    final note = Note(
      title: title,
      isImportant: true,
      number: number,
      description: description,
      createdTime: DateTime.now(),
    );

    await NotesDatabase.instance.create(note);
  }
}




class DismissibleDialog<T> extends PopupRoute<T> {
  File? _image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if(image == null) return;
    final imageTemporary =File(image.path);
    setState(() {
      this._image=imageTemporary;
    });
  }

  @override
  Color? get barrierColor => Colors.black.withAlpha(0x50);

  // This allows the popup to be dismissed by tapping the scrim or by pressing
  // the escape key on the keyboard.
  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => 'Dismissible Dialog';

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);


  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return Center(

      // Provide DefaultTextStyle to ensure that the dialog's text style
      // matches the rest of the text in the app.
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!,
        // UnconstrainedBox is used to make the dialog size itself
        // to fit to the size of the content.

        child:
        Column(
            children:[

              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.all( 40),
                child: Center(
                  child: Column(

                    children: [


                      CustomButtonG(
                          title: 'Galerie',
                          icon: Icons.image_outlined,
                          onClick: () {  }
                      ),
                      CustomButtonG(
                          title: 'Appareil Photo',
                          icon: Icons.camera,
                          onClick: getImage,
                      ),
                    ],
                  ),
                ),


              ),

            ]
        ),

      ),


    );


  }
}
// ignore: non_constant_identifier_names
Widget CustomButtonG({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {


  return SizedBox(
    width: 160,
    child:  ElevatedButton(
      onPressed: onClick,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 4,
          ),
          Text(title)
        ],),) ,
  );
}
