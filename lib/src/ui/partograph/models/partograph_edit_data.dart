class CervicalDilationEditData {
  final int? cervicalDilationId;
  final String partographId;

  CervicalDilationEditData({
    required this.cervicalDilationId,
    required this.partographId,
  });

  factory CervicalDilationEditData.fromJson(Map<String, dynamic> json) {
    return CervicalDilationEditData(
      cervicalDilationId: json['cervicalDilationId'] != null
          ? json['cervicalDilationId'] as int
          : null,
      partographId: json['partographId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cervicalDilationId': cervicalDilationId,
      'partographId': partographId,
    };
  }
}

class FetalHeartRateEditData {
  final int? fetalHeartRateId;
  final String partographId;

  FetalHeartRateEditData({
    required this.fetalHeartRateId,
    required this.partographId,
  });

  factory FetalHeartRateEditData.fromJson(Map<String, dynamic> json) {
    return FetalHeartRateEditData(
      fetalHeartRateId: json['fetalHeartRateId'] != null
          ? json['fetalHeartRateId'] as int
          : null,
      partographId: json['partographId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fetalHeartRateId': fetalHeartRateId,
      'partographId': partographId,
    };
  }
}

class ContractionFrequencyEditData {
  final int? contractionFrequencyId;
  final String partographId;

  ContractionFrequencyEditData({
    required this.contractionFrequencyId,
    required this.partographId,
  });

  factory ContractionFrequencyEditData.fromJson(Map<String, dynamic> json) {
    return ContractionFrequencyEditData(
      contractionFrequencyId: json['contractionFrequencyId'] != null
          ? json['contractionFrequencyId'] as int
          : null,
      partographId: json['partographId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'contractionFrequencyId': contractionFrequencyId,
      'partographId': partographId,
    };
  }
}

class MedicalSurveillanceEditData {
  final int? medicalSurveillanceTableId;
  final String partographId;

  MedicalSurveillanceEditData({
    required this.medicalSurveillanceTableId,
    required this.partographId,
  });

  factory MedicalSurveillanceEditData.fromJson(Map<String, dynamic> json) {
    return MedicalSurveillanceEditData(
      medicalSurveillanceTableId: json['medicalSurveillanceTableId'] != null
          ? json['medicalSurveillanceTableId'] as int
          : null,
      partographId: json['partographId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'medicalSurveillanceTableId': medicalSurveillanceTableId,
      'partographId': partographId,
    };
  }
}

class PresentationPositionVarietyData {
  final int? presentationPositionVarietyId;
  final String partographId;

  PresentationPositionVarietyData({
    required this.presentationPositionVarietyId,
    required this.partographId,
  });

  factory PresentationPositionVarietyData.fromJson(Map<String, dynamic> json) {
    return PresentationPositionVarietyData(
      presentationPositionVarietyId: json['presentationPositionVarietyId'] != null
          ? json['presentationPositionVarietyId'] as int
          : null,
      partographId: json['partographId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'presentationPositionVarietyId': presentationPositionVarietyId,
      'partographId': partographId,
    };
  }
}
