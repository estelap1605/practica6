class ProductDAO{
String? cveProd;
String? descProd;
String? imgProd;

ProductDAO({this.cveProd, this.descProd, this.imgProd});
Map<String, dynamic> toMap(){
  return{
  'cveProd'  : cveProd,
  'descProd' : descProd,
  'imgProd'  : imgProd
  };
}
}