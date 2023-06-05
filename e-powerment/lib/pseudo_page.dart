import 'package:e_empowerment/Welcome.dart';
import 'package:e_empowerment/avatars.dart';
import 'package:e_empowerment/notes_page.dart';
import 'package:e_empowerment/pages/hidden_drawer.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:e_empowerment/pages/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class PseudoPage extends StatefulWidget {
  PseudoPage({Key? key, required this.index}) : super(key: key);



final int index;

  @override
  State<PseudoPage> createState() => _PseudoPageState();
}

class _PseudoPageState extends State<PseudoPage> {
  List<String> values = ['images/avatar01.jpg','images/pingouin.jpg','images/sun.jpg','images/burger.jpg','images/star.png','images/dinosaur.jpg'];

bool isObscurePassword =true;

   TextEditingController myController = TextEditingController();

  get currentStep => widget.index;

  final _formKey = GlobalKey<FormState>();

  final _focusNode = FocusNode();

  bool _hasError = false;

  @override
  void dispose() {
    myController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


        body:Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/Plandetravail1.png"),
                fit:BoxFit.cover
            ),
          ),
          padding: const EdgeInsets.only(left:15,top:20,right:15),
          child:  GestureDetector(
           onTap : () {
             FocusScope.of(context).unfocus();
           },
              child :ListView(
                children:  [

                  Center(
                     child:Stack(

                       children: [

                         Container(

                           width: 130,
                           height: 130,
                           decoration: BoxDecoration(

                             border:Border.all(width:2,color: Colors.transparent ),
                             boxShadow: [
                               BoxShadow(

                                 spreadRadius :2,
                                 blurRadius: 10,
                                 color: Colors.black.withOpacity(0.1)
                               ),

                             ],
                             shape: BoxShape.circle,
                             image:  DecorationImage(

                               fit: BoxFit.cover,
                               image:AssetImage(values[widget.index]),
                               ) ,
                             )
                           ),

                       ],
                     )
                  /*  child: TextField(

                      decoration: InputDecoration(
                        hintText: 'Pseudo...',
                      ),
                    ), */
                  ),
                  const SizedBox(
                    height:30 ),
                  RichText(
                    text:    const TextSpan(
                      text: 'Quel est le',
                      style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),

                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Pseudonyme', style: TextStyle( color:Color(0xffA49BEC),fontSize:20,fontWeight: FontWeight.bold,)),
                        TextSpan(
                            text: ' que tu souhaites utiliser ?', style: TextStyle( color:Colors.white,fontSize:20,fontWeight: FontWeight.bold,)),


                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                      height:20 ),
                  buildTextField("Pseudo"),

                ],
              )









        ),


    ),
      bottomNavigationBar: GNav(

            tabBorderRadius: 15,
            duration: const Duration(milliseconds: 800),
            backgroundColor: const Color(0xff29216B),

            iconSize: 40,

            color: Colors.white,
          activeColor: Colors.white,
            gap: 8,

            // here where it ends
            padding: const EdgeInsets.all(10),
            tabs:  [
              GButton(

                icon: Icons.navigate_before,


                onPressed:(){

                  Navigator.pop(context);
                },
              ),


              GButton(

                icon: Icons.navigate_next,

                onPressed:(){
                 if(_formKey.currentState!.validate()){
                  String value = myController.text;
                   Navigator.push(context, MaterialPageRoute(builder: (context){

                                         return    Welcome(value: value, index: widget.index) ;
                                                       },),);

                         }

                },

              ),

            ],
          ),

    );
  }

  Widget buildTextField( String placeholder ) {
    return  Padding(
        padding: const EdgeInsets.all( 50),
      child: Form(
        key: _formKey,

        child: TextFormField(
          controller: myController,
          focusNode: _focusNode,
          onSaved: (String? value){
            String value = myController.text;
            print('La valeur saisie est : $value');
          },
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 20),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: _hasError ? Colors.red : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(70.0),

              ),
              focusedBorder:   OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffA49BEC),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(70.0),


              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeholder,
              hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700
              )
          ),
          validator: (String? value) =>
          value != null && value.isEmpty ? 'Veuillez saisir du texte': null,
        ),


      ),
    );

  }
}

