class PartographList {
  final String? partographId;
  final String name;
  final String recordName;
  final DateTime date;
  final String observation;
  final DateTime? createdAt;
  final String? createdBy;
  final DateTime? updateAt;
  final String? updateBy;
  final int stateId;
  final String userId;
  final bool isAchived;
  final bool set;
  final bool silenced;
  final bool favorite;
  final int? accessType;

  PartographList({
    this.partographId,
    required this.name,
    required this.recordName,
    required this.date,
    required this.observation,
    this.createdAt,
    this.createdBy,
    this.updateBy,
    this.updateAt,
    required this.stateId,
    required this.userId,
    required this.isAchived,
    required this.set,
    required this.silenced,
    required this.favorite,
    this.accessType,
  });

   PartographList copyWith({
    bool? isAchived,
    bool? set,
    bool? silenced,
    bool? favorite,
  }) {
    return PartographList(
      partographId: partographId,
      name: name,
      recordName: recordName,
      date: date,
      observation: observation,
      createdAt: createdAt,
      createdBy: createdBy,
      updateAt: updateAt,
      updateBy: updateBy,
      stateId: stateId,
      userId: userId,
      isAchived: isAchived ?? this.isAchived,
      set: set ?? this.set,
      silenced: silenced ?? this.silenced,
      favorite: favorite ?? this.favorite,
      accessType: accessType,
    );
  }
}
