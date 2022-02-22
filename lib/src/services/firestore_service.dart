import 'package:bmi_calculator_flutter/src/models/entry.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  //Get EE
  Stream<List<Entry>> getEntries(){
    return _db.collection('entries')
        .where('date', isGreaterThan: DateTime.now().add(Duration(days: -30)).toIso8601String())
        .snapshots()
        .map((snapshot) => snapshot.docs
        .map((doc) => Entry.fromJson(doc.data()))
        .toList());
  }

  //upsert
  Future<void> setEntry(Entry entry){
    var options = SetOptions(merge: true);
    return _db.collection('entries')
        .doc(entry.entryId)
        .set(entry.toMap(), options);
  }

  Future<void> removeEntry(String entryId){
    return _db.collection('entries')
        .doc(entryId)
        .delete();
  }

  //delete
}