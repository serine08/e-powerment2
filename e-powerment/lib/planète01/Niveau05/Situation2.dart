import 'package:e_empowerment/planète01/Niveau05/Situation3.dart';
import 'package:e_empowerment/planète01/Niveau4/ChoixRouge/Slide1Niveau4ChoixRouge.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Situation2 extends StatefulWidget {
  const Situation2({Key? key}) : super(key: key);

  @override
  State<Situation2> createState() => _Situation2State();
}

class _Situation2State extends State<Situation2> {
  TextEditingController myController = TextEditingController();
  List<Color> _containerColors = [Colors.white, Colors.white, Colors.white, Colors.white];
  List<Color> _textColors = [Colors.black, Colors.black, Colors.black, Colors.black];
  int? _selectedContainerIndex;
  late SharedPreferences _prefs;

  void _saveColor() async {
    await _prefs.setBool('isColorChanged', true);
  }

  void _changeColor(int index) {
    setState(() {
      if (_selectedContainerIndex == index) {
        // Deselect the container
        _containerColors[index] = Colors.white;
        _textColors[index] = Colors.black;
        _selectedContainerIndex = null;
      } else {
        // Select the tapped container and deselect others
        _selectedContainerIndex = index;
        for (int i = 0; i < _containerColors.length; i++) {
          if (i == index) {
            _containerColors[i] = Colors.purple;
            _textColors[i] = Colors.white;
          } else {
            _containerColors[i] = Colors.white;
            _textColors[i] = Colors.black;
          }
        }
      }
    });
    _saveColor();
  }

  @override
  void initState() {
    super.initState();
    _initializePreferences();
  }

  Future<void> _initializePreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/craiyon_113930_path_on_a_desert_planet__shot_against_dive___in_vector.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: const Color(0xff000000).withOpacity(0.46),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(-0.9, -0.9),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Slide1N4rouge(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.cancel),
                            iconSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        Align(
                          alignment: const Alignment(-0.7, -0.2),
                          child: GestureDetector(
                            onTap: () => _changeColor(0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: _containerColors[0],
                              ),
                              width: 150,
                              height: 100,
                              child: Center(
                                child: Text(
                                  "Proches",
                                  style: TextStyle(
                                    color: _textColors[0],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(0.7, -0.2),
                          child: GestureDetector(
                            onTap: () => _changeColor(1),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: _containerColors[1],
                              ),
                              width: 150,
                              height: 100,
                              child: Center(
                                child: Text(
                                  "Médical",
                                  style: TextStyle(
                                    color: _textColors[1],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(-0.7, 0.6),
                          child: GestureDetector(
                            onTap: () => _changeColor(2),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: _containerColors[2],
                              ),
                              width: 150,
                              height: 100,
                              child: Center(
                                child: Text(
                                  "Inconnu.es",
                                  style: TextStyle(
                                    color: _textColors[2],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(0.7, 0.6),
                          child: GestureDetector(
                            onTap: () => _changeColor(3),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: _containerColors[3],
                              ),
                              width: 150,
                              height: 100,
                              child: Center(
                                child: Text(
                                  "Professionnel / Scolaire",
                                  style: TextStyle(
                                    color: _textColors[3],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(0.1, 0.2),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/momo.webp"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(0, -0.7),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: RichText(
                              text: const TextSpan(
                                text: 'Maintenant que tu penses à une situation précise : saurais-tu dire de quel domaine de relations humaines il s\'agit ? Est-ce dans le cadre d\'un rendez-vous avec ta·ton psychiatre et dans ce cas ce serait le domaine médical ? Ou lors d\'un moment passé entre ami·es, et donc cela relève du domaine des proches ? Etc.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(0.9, 0.95),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Situation3()),
                              );
                            },
                            icon: const Icon(Icons.navigate_next),
                            iconSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
