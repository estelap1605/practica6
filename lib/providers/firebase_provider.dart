import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/models/product_DAO.dart';

class FirebaseProvider{

  late FirebaseFirestore _firestore;
  late CollectionReference _productsCollection;

  FirebaseProvider(){
    _firestore = FirebaseFirestore.instance;
    _productsCollection = _firestore.collection('productos');
  }

  Future<void> saveProduct(ProductDAO objPDAO){
    return _productsCollection.add(objPDAO.toMap());
  }

  Future<void> updateProduct(ProductDAO objPDAO, String DocumentID){
    return _productsCollection.doc(DocumentID).update(objPDAO.toMap());
  }

  Future<void> deleteProduct(String DocumentID){
    return _productsCollection.doc(DocumentID).delete();
  }

  Stream<QuerySnapshot> getAllProducts(){
    return _productsCollection.snapshots();
  }

}