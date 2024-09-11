import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_app/app.dart';

void bootstrap() {
  BindingBase.debugZoneErrorsAreFatal = false;
  runApp(const PatientApp());
}
