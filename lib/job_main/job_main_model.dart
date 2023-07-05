import '/backend/backend.dart';
import '/components/job_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for JobList component.
  late JobListModel jobListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    jobListModel = createModel(context, () => JobListModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    jobListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
