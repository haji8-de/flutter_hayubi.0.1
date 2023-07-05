import '/components/activity_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'activities_model.dart';
export 'activities_model.dart';

class ActivitiesWidget extends StatefulWidget {
  const ActivitiesWidget({Key? key}) : super(key: key);

  @override
  _ActivitiesWidgetState createState() => _ActivitiesWidgetState();
}

class _ActivitiesWidgetState extends State<ActivitiesWidget>
    with TickerProviderStateMixin {
  late ActivitiesModel _model;

  final animationsMap = {
    'activityCardOnPageLoadAnimation1': AnimationInfo(
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
    'activityCardOnPageLoadAnimation2': AnimationInfo(
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
    'activityCardOnPageLoadAnimation3': AnimationInfo(
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
    'activityCardOnPageLoadAnimation4': AnimationInfo(
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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivitiesModel());
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ACTIVITIES_Container_w9wkjcdf_ON_TAP');
                  if (FFAppState().showDetails1 == true) {
                    logFirebaseEvent('ActivityCard_update_app_state');
                    FFAppState().update(() {
                      FFAppState().showDetails1 = false;
                    });
                  } else {
                    logFirebaseEvent('ActivityCard_update_app_state');
                    FFAppState().update(() {
                      FFAppState().showDetails1 = true;
                    });
                  }
                },
                child: wrapWithModel(
                  model: _model.activityCardModel1,
                  updateCallback: () => setState(() {}),
                  child: ActivityCardWidget(
                    title: 'Kayaking',
                    subtitle: 'Fontaine de Vaucluse',
                    description:
                        'Explore the crystal clear waters of the Fontaine de Vaucluse. Paddle down the Sorgue River and discover hidden grottoes and cascading waterfalls with breathtaking views of the surrounding hills.',
                    expanded: FFAppState().showDetails1,
                    image:
                        'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/kayaking.png',
                    favorite: FFAppState().favorites[0],
                    index: 0,
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['activityCardOnPageLoadAnimation1']!),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('ACTIVITIES_Container_h9z33uzj_ON_TAP');
                if (FFAppState().showDetails2 == true) {
                  logFirebaseEvent('ActivityCard_update_app_state');
                  FFAppState().update(() {
                    FFAppState().showDetails2 = false;
                  });
                } else {
                  logFirebaseEvent('ActivityCard_update_app_state');
                  FFAppState().update(() {
                    FFAppState().showDetails2 = true;
                  });
                }
              },
              child: wrapWithModel(
                model: _model.activityCardModel2,
                updateCallback: () => setState(() {}),
                child: ActivityCardWidget(
                  title: 'Vaucluse Spring',
                  subtitle: 'Hiking',
                  description:
                      'This scenic hike takes you through the lush greenery of the Vaucluse Regional Nature Reserve, leading you to the stunning Vaucluse Spring, the largest spring in France. Along the way, you\'ll spot a variety of wildlife.',
                  expanded: FFAppState().showDetails2,
                  image:
                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/spring.png',
                  favorite: FFAppState().favorites[1],
                  index: 1,
                ),
              ),
            ).animateOnPageLoad(
                animationsMap['activityCardOnPageLoadAnimation2']!),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('ACTIVITIES_Container_0bjkag85_ON_TAP');
                if (FFAppState().showDetails3 == true) {
                  logFirebaseEvent('ActivityCard_update_app_state');
                  FFAppState().update(() {
                    FFAppState().showDetails3 = false;
                  });
                } else {
                  logFirebaseEvent('ActivityCard_update_app_state');
                  FFAppState().update(() {
                    FFAppState().showDetails3 = true;
                  });
                }
              },
              child: wrapWithModel(
                model: _model.activityCardModel3,
                updateCallback: () => setState(() {}),
                child: ActivityCardWidget(
                  title: 'Domaine Tourbillon',
                  subtitle: 'Winery',
                  description:
                      'Indulge in the rich flavors of Provence with a wine tasting experience at Châteauneuf-du-Pape, one of the most famous wine-producing regions in France. Famous for its bold and full-bodied red wines',
                  expanded: FFAppState().showDetails3,
                  image:
                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/vineyard.png',
                  favorite: FFAppState().favorites[2],
                  index: 2,
                ),
              ),
            ).animateOnPageLoad(
                animationsMap['activityCardOnPageLoadAnimation3']!),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('ACTIVITIES_Container_yz8qwe8q_ON_TAP');
                if (FFAppState().showDetails4 == true) {
                  logFirebaseEvent('ActivityCard_update_app_state');
                  FFAppState().update(() {
                    FFAppState().showDetails4 = false;
                  });
                } else {
                  logFirebaseEvent('ActivityCard_update_app_state');
                  FFAppState().update(() {
                    FFAppState().showDetails4 = true;
                  });
                }
              },
              child: wrapWithModel(
                model: _model.activityCardModel4,
                updateCallback: () => setState(() {}),
                child: ActivityCardWidget(
                  title: 'Gordes',
                  subtitle: 'Hilltop Village',
                  description:
                      ' Known for its stunning lavender fields, the village offers breathtaking panoramic views of the surrounding countryside. The village is a perfect blend of traditional Provencal architecture and natural beauty.',
                  expanded: FFAppState().showDetails4,
                  image:
                      'https://storage.googleapis.com/turo-deals-1599612493143.appspot.com/demo_images/hilltop.png',
                  favorite: FFAppState().favorites[3],
                  index: 3,
                ),
              ),
            ).animateOnPageLoad(
                animationsMap['activityCardOnPageLoadAnimation4']!),
          ],
        ),
      ),
    );
  }
}
