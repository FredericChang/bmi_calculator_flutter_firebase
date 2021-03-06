class Entry {
  final String entryId;
  final String date;
  final String entry;

  Entry({required this.entryId, required this.date, required this.entry});

  factory Entry.fromJson(Map<String, dynamic> json) {
    return Entry(
      date: json['date'],
      entry: json['entry'],
      entryId: json['entryId']
    );
  }

  Map<String,dynamic> toMap(){
    return{
      'date': date,
      'entry': entry,
      'entryId': entryId
    };
  }
}