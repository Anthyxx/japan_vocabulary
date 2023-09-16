import 'package:flutter/material.dart';
import 'package:japan_vocabulary/models/hive_boxes.dart';
import 'package:sizer/sizer.dart';

import '../screen_arguments.dart';

class HandleVocabularyPage extends StatefulWidget {
  const HandleVocabularyPage({super.key});

  @override
  State<HandleVocabularyPage> createState() => _HandleVocabularyPageState();
}

class _HandleVocabularyPageState extends State<HandleVocabularyPage> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return Scaffold(
            backgroundColor: Colors.lightBlueAccent,
            appBar: AppBar(
              title: const Text(
                  "Vocabulaire"
              ),
              backgroundColor: Colors.lightBlueAccent,
            ),
            body: Column(
              children: [
                Expanded(
                  child: Material(
                    child: ListView.builder(
                        itemCount: boxWords.length,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.lightBlueAccent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Container(
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(),
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
                                    ),
                                    child: ListTile(
                                      title: Center(
                                          child: Text(
                                              boxWords.getAt(index).wordFrench
                                          )
                                      ),
                                      tileColor: Colors.white,
                                      dense: true,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Container(
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(),
                                        //borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                                    ),
                                    child: ListTile(
                                      title: Center(
                                          child: Text(
                                              boxWords.getAt(index).wordJapanese
                                          )
                                      ),
                                      tileColor: Colors.white,
                                      dense: true,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Container(
                                    width: 13.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(),
                                        //borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                                    ),
                                    child: ListTile(
                                      title: const Center(
                                          child: Icon(Icons.edit)
                                      ),
                                      tileColor: Colors.white,
                                      dense: true,
                                      onTap: () async {
                                        await Navigator.pushNamed(
                                            context,
                                            "add_vocabulary",
                                            arguments: ScreenArguments(indexWord: index, isEdit: true)
                                        );
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Container(
                                    width: 13.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(),
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                                    ),
                                    child: ListTile(
                                      title: Center(child: Icon(Icons.delete)),
                                      tileColor: Colors.white,
                                      dense: true,
                                      onTap: (){
                                        boxWords.deleteAt(index);
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () async {
                      await Navigator.pushNamed(
                          context,
                          "/add_vocabulary",
                          arguments: ScreenArguments(indexWord: 0, isEdit: false)
                      );
                      setState(() {});
                    },
                    child: const Text(
                      "AJOUTER UN MOT",
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
                const SizedBox(height: 30)
              ],
            ),
          );
        }
    );
  }
}
