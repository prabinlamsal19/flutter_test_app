class PatientModel {
  String? name;
  DateTime? lastAppointment;
  int? bedNumber;
  int? wardNumber;
  int? oxygenPercent;
  int? bloodPressureSystolic;
  int? bloodPressureDiastolic;
  int? heartRate;
  String? appointedDoctor;

  PatientModel({
    this.name,
    this.lastAppointment,
    this.bedNumber,
    this.wardNumber,
    this.oxygenPercent,
    this.bloodPressureSystolic,
    this.bloodPressureDiastolic,
    this.heartRate,
    this.appointedDoctor,
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) {
    return PatientModel(
      name: json['name'],
      lastAppointment: json['lastAppointment'] != null ? DateTime.parse(json['lastAppointment']) : null,
      bedNumber: json['bed_number'],
      wardNumber: json['ward_number'],
      oxygenPercent: json['oxygen_percent'],
      bloodPressureSystolic: json['blood_pressure_systolic'],
      bloodPressureDiastolic: json['blood_pressure_diastolic'],
      heartRate: json['heart_rate'],
      appointedDoctor: json['appointed_doctor'],
    );
  }
}

List<PatientModel> parsePatientList(List<dynamic> jsonList) {
  return jsonList.map((json) => PatientModel.fromJson(json)).toList();
}
