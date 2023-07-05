import '/components/drive_row_widget.dart';
import '/components/flight_row_widget.dart';
import '/components/layover_row_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TravelModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for FlightRow component.
  late FlightRowModel flightRowModel1;
  // Model for LayoverRow component.
  late LayoverRowModel layoverRowModel1;
  // Model for FlightRow component.
  late FlightRowModel flightRowModel2;
  // Model for DriveRow component.
  late DriveRowModel driveRowModel1;
  // Model for DriveRow component.
  late DriveRowModel driveRowModel2;
  // Model for FlightRow component.
  late FlightRowModel flightRowModel3;
  // Model for LayoverRow component.
  late LayoverRowModel layoverRowModel2;
  // Model for FlightRow component.
  late FlightRowModel flightRowModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    flightRowModel1 = createModel(context, () => FlightRowModel());
    layoverRowModel1 = createModel(context, () => LayoverRowModel());
    flightRowModel2 = createModel(context, () => FlightRowModel());
    driveRowModel1 = createModel(context, () => DriveRowModel());
    driveRowModel2 = createModel(context, () => DriveRowModel());
    flightRowModel3 = createModel(context, () => FlightRowModel());
    layoverRowModel2 = createModel(context, () => LayoverRowModel());
    flightRowModel4 = createModel(context, () => FlightRowModel());
  }

  void dispose() {
    flightRowModel1.dispose();
    layoverRowModel1.dispose();
    flightRowModel2.dispose();
    driveRowModel1.dispose();
    driveRowModel2.dispose();
    flightRowModel3.dispose();
    layoverRowModel2.dispose();
    flightRowModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
