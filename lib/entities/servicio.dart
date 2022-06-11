class Servicio{
  final String? lavado;
  final String? polish;
  final String? tapiceria;

  Servicio({this.lavado, this.polish, this.tapiceria});

  factory Servicio.fromJson(Map<String, dynamic> json){
    return Servicio(
      lavado: json['lavado'],
      polish: json['polish'],
      tapiceria: json['tapiceria']
    );
  }

/*   Map<String,dynamic> toJson(){
  final Map<String,dynamic> data= new Map<String,dynamic>();
  data['lavado']=this.lavado;
  data['polish']=this.polish;
  data['tapiceria']=this.tapiceria;
  return data;
} */
}