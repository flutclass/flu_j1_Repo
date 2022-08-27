class Tools{
  final int? id;
  final String name;
  Tools({ this.id , required this.name});
  factory Tools.fromMap(Map<String,dynamic> json ) =>new Tools(
      id : json['id'],
      name : json['name']
  );
  Map<String,dynamic> toMap(){
    return {
      'id':id,
      'name':name
    };
  }
}
