class StudentModel {
  final String name;
  final String education;
  final String skill;

  StudentModel({this.name, this.education, this.skill});

   factory StudentModel.fromJson(final json){
     return StudentModel(
       name: json["name"],
       education: json["education"],
       skill: json["skell"]
     );
   }
}