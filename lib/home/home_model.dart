import '/components/accommodations_widget.dart';
import '/components/nav_item_widget.dart';
import '/components/travel_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavItem component.
  late NavItemModel navItemModel1;
  // Model for NavItem component.
  late NavItemModel navItemModel2;
  // Model for NavItem component.
  late NavItemModel navItemModel3;
  // Model for NavItem component.
  late NavItemModel navItemModel4;
  // Model for Travel component.
  late TravelModel travelModel;
  // Model for Accommodations component.
  late AccommodationsModel accommodationsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navItemModel1 = createModel(context, () => NavItemModel());
    navItemModel2 = createModel(context, () => NavItemModel());
    navItemModel3 = createModel(context, () => NavItemModel());
    navItemModel4 = createModel(context, () => NavItemModel());
    travelModel = createModel(context, () => TravelModel());
    accommodationsModel = createModel(context, () => AccommodationsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navItemModel1.dispose();
    navItemModel2.dispose();
    navItemModel3.dispose();
    navItemModel4.dispose();
    travelModel.dispose();
    accommodationsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
