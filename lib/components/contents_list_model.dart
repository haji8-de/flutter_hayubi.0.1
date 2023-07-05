import '/backend/backend.dart';
import '/components/contents_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class ContentsListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ListView widget.
  PagingController<DocumentSnapshot?, PostsRecord>? pagingController;
  Query? pagingQuery;
  List<StreamSubscription?> streamSubscriptions = [];

  // Models for contentsCard dynamic component.
  late FlutterFlowDynamicModels<ContentsCardModel> contentsCardModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contentsCardModels = FlutterFlowDynamicModels(() => ContentsCardModel());
  }

  void dispose() {
    streamSubscriptions.forEach((s) => s?.cancel());
    contentsCardModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
