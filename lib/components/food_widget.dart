import '/components/food_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'food_model.dart';
export 'food_model.dart';

class FoodWidget extends StatefulWidget {
  const FoodWidget({Key? key}) : super(key: key);

  @override
  _FoodWidgetState createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> with TickerProviderStateMixin {
  late FoodModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        SaturateEffect(
          curve: Curves.easeIn,
          delay: 900.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'foodCardOnPageLoadAnimation1': AnimationInfo(
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
    'foodCardOnPageLoadAnimation2': AnimationInfo(
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
    'foodCardOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: Offset(0.0, 75.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 550.ms,
          duration: 300.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
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
    _model = createModel(context, () => FoodModel());
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  height: FFAppState().cookSelected[0] &&
                          FFAppState().cookSelected[1] &&
                          FFAppState().cookSelected[2]
                      ? 0.0
                      : 65.0,
                  constraints: BoxConstraints(
                    maxWidth: 450.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).cerise,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warning_rounded,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 30.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: AutoSizeText(
                              FFLocalizations.of(context).getText(
                                'qkz1pwqa' /* Some meals still need voluntee... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sora',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: FFAppState().cookSelected[0] &&
                          FFAppState().cookSelected[1] &&
                          FFAppState().cookSelected[2]
                      ? 0.0
                      : 30.0,
                  constraints: BoxConstraints(
                    maxWidth: 450.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'rne6qk6f' /* HOME-MADE MEALS */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.foodCardModel1,
                updateCallback: () => setState(() {}),
                child: FoodCardWidget(
                  title: 'Coq au Vin',
                  description:
                      'with chicken braised in red wine, bacon, mushrooms, and onions',
                  signedUp: false,
                  image:
                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/coq-au-vin.png',
                  cook: FFAppState().cooks[0],
                  index: 0,
                ),
              ).animateOnPageLoad(
                  animationsMap['foodCardOnPageLoadAnimation1']!),
            ),
            wrapWithModel(
              model: _model.foodCardModel2,
              updateCallback: () => setState(() {}),
              child: FoodCardWidget(
                title: 'Boeuf Bourguignon',
                description: 'with beef, bacon, carrots, onions, and mushrooms',
                signedUp: FFAppState().cookSelected[1],
                image:
                    'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/boeuf-bourguignon.png',
                cook: FFAppState().cooks[1],
                index: 1,
              ),
            ).animateOnPageLoad(animationsMap['foodCardOnPageLoadAnimation2']!),
            wrapWithModel(
              model: _model.foodCardModel3,
              updateCallback: () => setState(() {}),
              child: FoodCardWidget(
                title: 'Ratatouille',
                description:
                    'with eggplant, zucchini, bell peppers, and tomatoes',
                signedUp: FFAppState().cookSelected[2],
                image:
                    'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/ratatouille.png',
                cook: FFAppState().cooks[2],
                index: 2,
              ),
            ).animateOnPageLoad(animationsMap['foodCardOnPageLoadAnimation3']!),
          ],
        ),
      ),
    );
  }
}
