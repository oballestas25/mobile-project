import 'package:firebase_database/firebase_database.dart';


class FirebaseConnectionDetail {
  
  static final FirebaseDatabase _database =FirebaseDatabase.instance;
  int? registerId;
  FirebaseConnectionDetail({this.registerId}) ;
  DatabaseReference instanceFirebase (registerId){
    return _database.ref("/Registros/$registerId/");
 
  }

  Future getDetailRegister(carId) async{
  try{
    DatabaseReference registros = instanceFirebase(carId);
    DataSnapshot response = await registros.get();
    final responseMap = Map<String, dynamic>.from(response.value as Map);
    final registers = responseMap;
    return registers;
  }
  catch(error){
    rethrow;
  }
}
}







