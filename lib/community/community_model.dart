import '/backend/backend.dart';
import '/components/contents_list_widget.dart';
import '/components/create_content_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommunityModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? jobType = 'Job';

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for contentsList component.
  late ContentsListModel contentsListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contentsListModel = createModel(context, () => ContentsListModel());
  }

  void dispose() {
    contentsListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
