class PartographState {
  final int? id;
  final String partographId;
  final bool isAchived;
  final bool set;
  final bool silenced;
  final bool favorite;
 // final DateTime lastViewDate;
  
  PartographState({
    this.id,
    required this.partographId,
    required this.isAchived,
    required this.set,
    required this.silenced,
    required this.favorite,
   // required this.lastViewDate
  });
}
