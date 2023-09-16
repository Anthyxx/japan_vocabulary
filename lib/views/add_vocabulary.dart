import 'package:flutter/material.dart';
import 'package:japan_vocabulary/models/hive_boxes.dart';
import 'package:japan_vocabulary/models/word.dart';
import 'package:japan_vocabulary/static.dart';
import 'package:sizer/sizer.dart';

class AddVocabularyPage extends StatefulWidget {
  const AddVocabularyPage({super.key});

  @override
  State<AddVocabularyPage> createState() => _AddVocabularyPageState();
}

class _AddVocabularyPageState extends State<AddVocabularyPage> {
  bool switchTraduction = true;
  bool switchKnowing = true;

  TextEditingController controllerWordFrench = TextEditingController();
  TextEditingController controllerWordJapanese = TextEditingController();
  TextEditingController controllerWordDetails = TextEditingController();


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return Scaffold(
              //backgroundColor: Colors.lightBlueAccent,
              appBar: AppBar(
                title: const Text(
                    "Ajout d'un mot"
                ),
                backgroundColor: Colors.lightBlueAccent,
              ),
              body: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Container(
                      width: 80.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child: TextField(
                        controller: controllerWordFrench,
                        decoration: InputDecoration(
                          labelText: "Mot en Français",
                          //hintText: "Test",
                          enabledBorder: StaticVariables.outlineInputBorder,
                          focusedBorder: StaticVariables.outlineInputBorder,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: 80.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child: TextField(
                        controller: controllerWordJapanese,
                        decoration: InputDecoration(
                          labelText: "Mot en Japonais",
                          //hintText: "Test",
                          enabledBorder: StaticVariables.outlineInputBorder,
                          focusedBorder: StaticVariables.outlineInputBorder,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text("La traduction du mot est-elle valide ?"),
                    Switch(
                      // This bool value toggles the switch.
                      value: switchTraduction,
                      activeColor: Colors.lightBlueAccent,
                      onChanged: (bool value) {
                        setState(() {
                          switchTraduction = value;
                        });
                      },
                    ),
                    const Text("Est ce que vous connaissez ce mot ?"),
                    Switch(
                      // This bool value toggles the switch.
                      value: switchKnowing,
                      activeColor: Colors.lightBlueAccent,
                      onChanged: (bool value) {
                        setState(() {
                          switchKnowing = value;
                        });
                      },
                    ),
                    Container(
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white
                      ),
                      child: TextField(
                        controller: controllerWordDetails,
                        decoration: InputDecoration(
                          labelText: "Détails sur le mot",
                          //hintText: "Test",
                          enabledBorder: StaticVariables.outlineInputBorder,
                          focusedBorder: StaticVariables.outlineInputBorder,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          if(controllerWordFrench.text.isNotEmpty && controllerWordJapanese.text.isNotEmpty && controllerWordDetails.text.isNotEmpty){
                            boxWords.add(Word(wordFrench: controllerWordFrench.text, wordJapanese: controllerWordJapanese.text, traductionValidated: switchTraduction, wordKnown: switchKnowing, details: controllerWordDetails.text));
                            Navigator.pop(context);
                          }
                        },
                        child: const Text(
                          "ENREGISTRER",
                          style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ],
                ),
              )
          );
        }
    );
  }
}