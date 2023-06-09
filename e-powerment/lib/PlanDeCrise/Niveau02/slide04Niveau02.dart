import 'package:e_empowerment/PlanDeCrise/Niveau01/slide03.dart';
import 'package:e_empowerment/PlanDeCrise/Niveau02/slide05Niveau02.dart';
import 'package:flutter/material.dart';


class slide04Niveau02 extends StatefulWidget {
  slide04Niveau02({Key? key}) : super(key: key);

  @override
  State<slide04Niveau02> createState() => _slide04Niveau02State();
}
const Duration potoAnimationDuration = Duration(milliseconds: 500);
const Duration textAnimationDuration = Duration(milliseconds: 700);
class _slide04Niveau02State extends State<slide04Niveau02> with TickerProviderStateMixin {
  TextEditingController myController = TextEditingController();
  String? buttonText;
  List<bool> buttonSelected = List<bool>.generate(9, (index) => false);

  List<String> buttonOptions = [
    'Dormir',
    'Sortir du lit',
    'Être seul·e pendant plusieurs jours',
    'Prendre un médicament précis',
    'Manger',
    'Boire de l’eau',
    'Ne plus boire d’alcool',
    'Me dépenser physiquement',
    'Courir',
  ];






  void handleButtonPress(int index) {
    setState(() {
      if (buttonSelected[index]) {
        // If the button is already selected, clear the selection
        buttonText = null;
        buttonSelected[index] = false;
      } else {
        // If the button is not selected, select it
        buttonText = buttonOptions[index];
        buttonSelected = List<bool>.generate(9, (i) => i == index);
      }
    });
  }
  void handleNextButtonPress(BuildContext context) {
    if (buttonText != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => slide05Niveau02(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/fond.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(-0.9, -0.8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel),
                  iconSize: 40,
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05,
                bottom: MediaQuery.of(context).size.height * 0.1,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 16.0,
                  ),
                  itemCount: buttonOptions.length,
                  itemBuilder: (context, index) {
                    return buttonWidget(index);
                  },
                ),
              ),

              Align(
                alignment: const Alignment(0.9,0.97),
                child: IconButton(


                  onPressed: (){
                    handleNextButtonPress(context);

                  }, icon: const Icon(Icons.navigate_next),
                  iconSize: 40,
                  color: Colors.white,


                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonWidget(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          padding: const EdgeInsets.all(8),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          elevation: 10,
          backgroundColor: Colors.white,
          fixedSize: const Size(350, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          handleButtonPress(index);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: buttonSelected[index] ? Color(0xff962C08) : Color(0xff962C08),
                    width: 2,
                  ),
                  color: buttonSelected[index] ?Color(0xff962C08) : Colors.transparent,
                ),
                child: buttonSelected[index]
                    ? Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff962C08),
                  ),
                )
                    : null,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  buttonOptions[index],
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
