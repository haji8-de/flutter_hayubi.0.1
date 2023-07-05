import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'job_card_model.dart';
export 'job_card_model.dart';

class JobCardWidget extends StatefulWidget {
  const JobCardWidget({
    Key? key,
    required this.company,
    required this.position,
    String? locationStr,
    required this.applyDate,
    required this.logo,
    bool? likeBool,
    bool? applyBool,
  })  : this.locationStr = locationStr ?? 'Jinju-si, kyonsangnamdo',
        this.likeBool = likeBool ?? true,
        this.applyBool = applyBool ?? true,
        super(key: key);

  final String? company;
  final String? position;
  final String locationStr;
  final DateTime? applyDate;
  final String? logo;
  final bool likeBool;
  final bool applyBool;

  @override
  _JobCardWidgetState createState() => _JobCardWidgetState();
}

class _JobCardWidgetState extends State<JobCardWidget> {
  late JobCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 20.0, 4.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 12.0,
              color: Color(0x34000000),
              offset: Offset(-2.0, 5.0),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(
                widget.logo!,
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                        child: Text(
                          widget.company!.maybeHandleOverflow(
                            maxChars: 15,
                            replacement: '…',
                          ),
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Sora',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.5, 4.0, 0.0, 0.0),
                        child: Text(
                          widget.position!.maybeHandleOverflow(
                            maxChars: 20,
                            replacement: '…',
                          ),
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Sora',
                                    color: Color(0xFF0059DF),
                                  ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.room_outlined,
                            color: Colors.black,
                            size: 18.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              widget.locationStr.maybeHandleOverflow(
                                maxChars: 10,
                                replacement: '…',
                              ),
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Sora',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ToggleIcon(
                      onPressed: () async {
                        setState(() => FFAppState().showDetails1 =
                            !FFAppState().showDetails1);
                      },
                      value: FFAppState().showDetails1,
                      onIcon: Icon(
                        Icons.stars,
                        color: Color(0x5FF0A202),
                        size: 25.0,
                      ),
                      offIcon: Icon(
                        Icons.star_border,
                        color: FlutterFlowTheme.of(context).accent3,
                        size: 25.0,
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        dateTimeFormat(
                          'Md',
                          widget.applyDate,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        '4/29',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        '8zwpg6w7' /* Apply Now */,
                      ),
                      options: FFButtonOptions(
                        width: 85.0,
                        height: 25.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.bold,
                                ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).accent3,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                        hoverBorderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        hoverTextColor: FlutterFlowTheme.of(context).error,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
