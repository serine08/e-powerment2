import 'package:e_empowerment/PlanDeCrise/Niveau02/slide03Niveau02.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Add this line

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _password = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform your desired action here
      print('Form submitted');
      print('Name: $_name');
      print('Email: $_email');
      print('Password: $_password');

    }
    Navigator.push(context, MaterialPageRoute(builder: (context){

      return    slide03Niveau02();
    },),);
  }
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
void _showTimePicker(){
    showTimePicker(context: context, initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay= value!;
      });
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fond.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(-0.9, -0.9),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.cancel),
                iconSize: 40,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.85,
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffE77019).withOpacity(0.2),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(70.0),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(70.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xffE77019).withOpacity(0.2),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(70.0),
                                ),
                                hintText: 'Prénom',
                                hintStyle: const TextStyle(
                                  color: Color(0xff962C08),
                                  fontWeight: FontWeight.bold,fontSize: 14
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  _name = value;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffE77019).withOpacity(0.2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: const Color(0xffE77019).withOpacity(0.2),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                              hintText: 'Nom',
                              hintStyle: const TextStyle(
                                color: Color(0xff962C08),
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                _name = value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffE77019).withOpacity(0.2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: const Color(0xffE77019).withOpacity(0.2),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                              hintText: 'Surnom',
                              hintStyle: const TextStyle(
                                color: Color(0xff962C08),
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                _name = value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffE77019).withOpacity(0.2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color:Colors.transparent,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: const Color(0xffE77019).withOpacity(0.2),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(70.0),
                              ),
                              hintText: 'Numéro de téléphone',
                              hintStyle: const TextStyle(
                                color: Color(0xff962C08),
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'veuillez saisir le numéro de téléphone';
                              }
                              // You can add more complex validation logic here
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                _password = value;
                              });
                            },
                          ),
                        ),

                        const SizedBox(height: 12.0),
                        const Center(child: Text('Jours',style: TextStyle(fontSize: 22,color:  Color(0xff962C08),fontWeight: FontWeight.bold),)),

                       Align(
                            alignment: Alignment.center,
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10, // Adjust the runSpacing value as needed

                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE77019).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: 60,
                                    height: 35,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Lun',
                                        style: TextStyle(
                                          color: Color(0xff962C08),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE77019).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: 60,
                                    height: 35,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mar',
                                        style: TextStyle(
                                          color: Color(0xff962C08),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE77019).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: 60,
                                    height: 35,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mer',
                                        style: TextStyle(
                                          color: Color(0xff962C08),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE77019).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: 60,
                                    height: 35,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Jeu',
                                        style: TextStyle(
                                          color: Color(0xff962C08),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 50),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE77019).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: 60,
                                    height: 35,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Ven',
                                        style: TextStyle(
                                          color: Color(0xff962C08),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE77019).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: 60,
                                    height: 35,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Sam',
                                        style: TextStyle(
                                          color: Color(0xff962C08),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffE77019).withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: 60,
                                    height: 35,
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Dim',
                                        style: TextStyle(
                                          color: Color(0xff962C08),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                        const SizedBox(height: 8.0),


                        const Center(



                                child: Text('Heure',style: TextStyle(color: Color(0xff962C08),fontWeight: FontWeight.bold,fontSize: 25 ),),


                        ),
                        const SizedBox(height: 10.0),

                        //display the chosen time
                        Center(
                            child: GestureDetector(
                              onTap: _showTimePicker,
                              child: Container(

                              decoration: BoxDecoration(
                                  color: const Color(0xffE77019).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(70)

                              ),
                              width: 120,
                              child: Text(_timeOfDay.format(context).toString(),style: TextStyle(fontSize: 25,color:  Color(0xff962C08),fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                            )),
                        const SizedBox(height: 12.0),
                        Center(
                          child: ElevatedButton(
                            onPressed: _submitForm,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff962C08)),

                            ),
                            child: const Text(
                              'Valider',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


