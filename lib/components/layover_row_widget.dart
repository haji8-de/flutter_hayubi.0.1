import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'layover_row_model.dart';
export 'layover_row_model.dart';

class LayoverRowWidget extends StatefulWidget {
  const LayoverRowWidget({
    Key? key,
    this.title,
    this.index,
  }) : super(key: key);

  final String? title;
  final int? index;

  @override
  _LayoverRowWidgetState createState() => _LayoverRowWidgetState();
}

class _LayoverRowWidgetState extends State<LayoverRowWidget> {
  late LayoverRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LayoverRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      child: Container(
        width: 360.1,
        height: 45.0,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50.0,
              height: 45.0,
              child: Stack(
                alignment: AlignmentDirectional(0.0, -1.0),
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (widget.index != 0)
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: 2.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                          ),
                        ),
                      if (widget.index != -1)
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Container(
                              width: 2.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).lightGrey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.title,
                        'Layover',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sora',
                            color: FlutterFlowTheme.of(context).lightGrey,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: FaIcon(
                FontAwesomeIcons.clock,
                color: FlutterFlowTheme.of(context).lightGrey,
                size: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
