import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:japan_vocabulary/models/word.dart';
import 'package:sizer/sizer.dart';

import '../models/hive_boxes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void initHive() async {
    boxWords = await Hive.openBox<Word>('words');
  }

  @override
  void initState() {
    initHive();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/japan_flag.png",
                  scale: 10,
                ),
                const SizedBox(height: 50),
                Container(
                  width: 80.w,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: ListTile(
                    title: const Center(
                        child: Text("Gérer mon Vocabulaire")
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                          context,
                          "/handle_vocabulary"
                      );
                    },
                    tileColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 80.w,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: ListTile(
                    title: const Center(
                        child: Text("Test")
                    ),
                    onTap: () {

                    },
                    tileColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 80.w,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: ListTile(
                    title: const Center(
                        child: Text("Test")
                    ),
                    onTap: () {

                    },
                    tileColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
