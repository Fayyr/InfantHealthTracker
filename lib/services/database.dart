import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ihtprototype/screens/vaccscreen.dart';
import 'package:ihtprototype/models/vaccmodel.dart';

class DatabaseService {
  //vacc
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference vaccinationCollection =
      Firestore.instance.collection('vaccinations');

  Future updateVaccineData(String name, String date) async {
    return await vaccinationCollection.document(uid).setData({
      'name': name,
      'date': date,
    });
  }

  //vacc list from snapshot
  List<Vaccination> _vaccinationListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Vaccination(name: doc.data['name'], date: doc.data['date']);
    }).toList();
  }

  //get vacc stream
  Stream<List<Vaccination>> get vaccinations {
    return vaccinationCollection.snapshots().map(_vaccinationListFromSnapshot);
  }
  //growth----------------------------------------------------------------------------------------------------
  
  // final CollectionReference growthCollection =
  //     Firestore.instance.collection('growths');

  // Future updateGrowthData(String name, String date) async {
  //   return await growthCollection.document(uid).setData({
  //     'height': height,
  //     'weight': weight,
  //   });
  // }

  // //gr list from snapshot
  // List<Growth> _growthListFromSnapshot(QuerySnapshot snapshot) {
  //   return snapshot.documents.map((doc) {
  //     return Growth(height: doc.data['height'], weight: doc.data['weight']);
  //   }).toList();
  // }

  // //get gr stream
  // Stream<List<Growth>> get growths {
  //   return growthCollection.snapshots().map(_growthListFromSnapshot);
  // }
}
