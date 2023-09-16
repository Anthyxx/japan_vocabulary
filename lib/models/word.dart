import 'package:hive/hive.dart';

part 'word.g.dart';

@HiveType(typeId: 0)
class Word extends HiveObject{

  @HiveField(0)
  String wordFrench;

  @HiveField(1)
  String wordJapanese;

  @HiveField(2)
  bool traductionValidated;

  @HiveField(3)
  bool wordKnown;

  @HiveField(4)
  String? details;

  Word({
    required this.wordFrench,
    required this.wordJapanese,
    required this.traductionValidated,
    required this.wordKnown,
    required this.details
  });
}