import '/components/ticket_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TicketModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for TicketField component.
  late TicketFieldModel ticketFieldModel1;
  // Model for TicketField component.
  late TicketFieldModel ticketFieldModel2;
  // Model for TicketField component.
  late TicketFieldModel ticketFieldModel3;
  // Model for TicketField component.
  late TicketFieldModel ticketFieldModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    ticketFieldModel1 = createModel(context, () => TicketFieldModel());
    ticketFieldModel2 = createModel(context, () => TicketFieldModel());
    ticketFieldModel3 = createModel(context, () => TicketFieldModel());
    ticketFieldModel4 = createModel(context, () => TicketFieldModel());
  }

  void dispose() {
    ticketFieldModel1.dispose();
    ticketFieldModel2.dispose();
    ticketFieldModel3.dispose();
    ticketFieldModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
