class ResponseFirebaseDetail {
  Map<String,dynamic>? registros;

  ResponseFirebaseDetail({
    this.registros,
  });

  ResponseFirebaseDetail.fromJson(Map<String,dynamic> json) {
    registros = json;
  }
}

