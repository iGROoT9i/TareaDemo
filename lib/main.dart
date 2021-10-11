import 'package:flutter/material.dart';
import './view_sample.dart';
import 'ServiceLocator.dart';

void main() {
  // Servicio de registro
  setupLocator();
  // ejecuta la interfaz principal
  runApp(ViewSample());
}
