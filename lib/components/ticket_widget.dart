import '/components/ticket_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ticket_model.dart';
export 'ticket_model.dart';

class TicketWidget extends StatefulWidget {
  const TicketWidget({
    Key? key,
    this.destination,
  }) : super(key: key);

  final String? destination;

  @override
  _TicketWidgetState createState() => _TicketWidgetState();
}

class _TicketWidgetState extends State<TicketWidget> {
  late TicketModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 330.0,
          height: 394.4,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 138.6,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/munich.png',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 138.6,
                        decoration: BoxDecoration(
                          color: Color(0x89DA4167),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'ddn1mkwj' /* DESTINATION */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Sora',
                              color: FlutterFlowTheme.of(context).lightGrey,
                              fontSize: 12.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        widget.destination!,
                        style: FlutterFlowTheme.of(context).displaySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.ticketFieldModel1,
                          updateCallback: () => setState(() {}),
                          child: TicketFieldWidget(
                            title: 'DATE',
                            value: 'July 14',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.ticketFieldModel2,
                          updateCallback: () => setState(() {}),
                          child: TicketFieldWidget(
                            title: 'TIME',
                            value: '10:02am',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.ticketFieldModel3,
                          updateCallback: () => setState(() {}),
                          child: TicketFieldWidget(
                            title: 'GATE',
                            value: 'D31',
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.ticketFieldModel4,
                          updateCallback: () => setState(() {}),
                          child: TicketFieldWidget(
                            title: 'SEAT',
                            value: '2A',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 30.0),
          child: Container(
            width: 330.0,
            height: 110.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
              child: BarcodeWidget(
                data: 'Barcode',
                barcode: Barcode.code128(),
                width: 100.0,
                height: 70.0,
                color: FlutterFlowTheme.of(context).primaryText,
                backgroundColor: Colors.transparent,
                errorBuilder: (_context, _error) => SizedBox(
                  width: 100.0,
                  height: 70.0,
                ),
                drawText: false,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
