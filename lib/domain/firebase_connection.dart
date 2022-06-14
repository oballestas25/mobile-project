import 'package:firebase_database/firebase_database.dart';
import 'package:mobile_project/entities/response_firebase.dart';


class FirebaseConnection {
  static final FirebaseDatabase _database =FirebaseDatabase.instance;
  DatabaseReference instanceFirebase (){

    return _database.ref('/Registros');
 
  }

  Future<ResponseFirebase> getRegisters() async{
  try{
    DatabaseReference registros = instanceFirebase();
    DataSnapshot response = await registros.get();
    final responseMap = Map<String, dynamic>.from(response.value as Map);
    final registers = ResponseFirebase.fromJson(responseMap.values.toList());
    return registers;
  }
  catch(error){
    rethrow;
  }
}
}







