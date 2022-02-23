import 'package:bmi_calculator_flutter/src/models/entry.dart';
import 'package:bmi_calculator_flutter/src/services/firestore_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';
import 'package:provider/provider.dart';

class EntryProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  late DateTime _date; // private if this is not the private one, it will not change
  late String _entry;
  late String _entryId;
  var uuid = Uuid();

  //Getter
  DateTime get date => _date;
  String get entry => _entry;
  Stream<List<Entry>> get entries => firestoreService.getEntries();

  //Setter
  set changeDate(DateTime date){
    _date = date;
    notifyListeners();
  }

  set changeEntry(String entry){
    _entry = entry;
    notifyListeners();
  }


  //Functions
  loadAll
}