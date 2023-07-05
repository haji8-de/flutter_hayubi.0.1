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
import 'travel_model.dart';
export 'travel_model.dart';

class TravelWidget extends StatefulWidget {
  const TravelWidget({Key? key}) : super(key: key);

  @override
  _TravelWidgetState createState() => _TravelWidgetState();
}

class _TravelWidgetState extends State<TravelWidget>
    with TickerProviderStateMixin {
  late TravelModel _model;

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 75.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 300.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'flightRowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 300.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'layoverRowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 350.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 350.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 350.ms,
          duration: 300.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'flightRowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'driveRowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 450.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 450.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 450.ms,
          duration: 300.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: Offset(0.0, 75.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 350.ms,
          duration: 300.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'driveRowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 500.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 500.ms,
          duration: 300.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'flightRowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 550.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 550.ms,
          duration: 300.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'layoverRowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 300.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'flightRowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 650.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 650.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 650.ms,
          duration: 300.ms,
          begin: Offset(0.0, -20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TravelModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'zysdayqq' /* FRIDAY JULY 14 */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ],
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 30.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                constraints: BoxConstraints(
                  maxWidth: 450.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 10.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 30.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.flightRowModel1,
                        updateCallback: () => setState(() {}),
                        child: FlightRowWidget(
                          complete: true,
                          title: 'Flight to Munich',
                          subtitle: '7 hrs 35 mins',
                          index: 0,
                          destination: 'Munich',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['flightRowOnPageLoadAnimation1']!),
                      wrapWithModel(
                        model: _model.layoverRowModel1,
                        updateCallback: () => setState(() {}),
                        child: LayoverRowWidget(
                          title: 'Layover (46 mins)',
                          index: 1,
                        ),
                      ).animateOnPageLoad(
                          animationsMap['layoverRowOnPageLoadAnimation1']!),
                      wrapWithModel(
                        model: _model.flightRowModel2,
                        updateCallback: () => setState(() {}),
                        child: FlightRowWidget(
                          complete: false,
                          title: 'Flight to Marseille',
                          subtitle: '1 hr 40 mins',
                          index: 2,
                          destination: 'Marseille',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['flightRowOnPageLoadAnimation2']!),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: wrapWithModel(
                          model: _model.driveRowModel1,
                          updateCallback: () => setState(() {}),
                          child: DriveRowWidget(
                            complete: false,
                            title: 'Drive to Airbnb',
                            subtitle: '40 mins',
                            index: -1,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['driveRowOnPageLoadAnimation1']!),
                      ),
                    ],
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation1']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '6z5b3wgp' /* SATURDAY JULY 22 */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ],
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 30.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                constraints: BoxConstraints(
                  maxWidth: 450.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 10.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 30.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.driveRowModel2,
                          updateCallback: () => setState(() {}),
                          child: DriveRowWidget(
                            complete: false,
                            title: 'Drive to Marseille',
                            subtitle: '40 mins',
                            index: 0,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['driveRowOnPageLoadAnimation2']!),
                      ),
                      wrapWithModel(
                        model: _model.flightRowModel3,
                        updateCallback: () => setState(() {}),
                        child: FlightRowWidget(
                          complete: false,
                          title: 'Flight to Munich',
                          subtitle: '9 hrs 10 mins',
                          index: 1,
                          destination: 'Munich',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['flightRowOnPageLoadAnimation3']!),
                      wrapWithModel(
                        model: _model.layoverRowModel2,
                        updateCallback: () => setState(() {}),
                        child: LayoverRowWidget(
                          title: 'Layover (1 hr 55 mins)',
                          index: 2,
                        ),
                      ).animateOnPageLoad(
                          animationsMap['layoverRowOnPageLoadAnimation2']!),
                      wrapWithModel(
                        model: _model.flightRowModel4,
                        updateCallback: () => setState(() {}),
                        child: FlightRowWidget(
                          complete: false,
                          title: 'Flight to New York',
                          subtitle: '9 hrs 10 mins',
                          index: -1,
                          destination: 'New York',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['flightRowOnPageLoadAnimation4']!),
                    ],
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation2']!),
            ),
          ],
        ),
      ),
    );
  }
}
