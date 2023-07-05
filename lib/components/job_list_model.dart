import '/backend/backend.dart';
import '/components/job_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Models for JobCard dynamic component.
  late FlutterFlowDynamicModels<JobCardModel> jobCardModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    jobCardModels = FlutterFlowDynamicModels(() => JobCardModel());
  }

  void dispose() {
    jobCardModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
