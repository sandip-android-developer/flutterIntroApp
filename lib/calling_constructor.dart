import 'construct.dart';

class ConstList{
  String? name;
  int? rollNo;

List student=[
  Constructor("name1",111),
  Constructor("name2",222),
  Constructor("name3",333),
  Constructor("name4",444),
  Constructor("name5",555),
  Constructor("name6",666),
  Constructor("name7",777),
  Constructor("name8",888),
  Constructor("name9",999),
];
  listName(int tileNo)=>student[tileNo].name;
  listRollNo(int tileNo)=>student[tileNo].rollNo;
}