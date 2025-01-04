import 'package:hive_flutter/hive_flutter.dart';
part 'not_model.g.dart';

@HiveType(typeId: 0)
class NotModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NotModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
