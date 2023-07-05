import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_item_model.dart';
export 'nav_item_model.dart';

class NavItemWidget extends StatefulWidget {
  const NavItemWidget({
    Key? key,
    this.text,
    this.selected,
    this.width,
  }) : super(key: key);

  final String? text;
  final bool? selected;
  final int? width;

  @override
  _NavItemWidgetState createState() => _NavItemWidgetState();
}

class _NavItemWidgetState extends State<NavItemWidget>
    with TickerProviderStateMixin {
  late NavItemModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
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
    _model = createModel(context, () => NavItemModel());
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
        height: 26.9,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            if (widget.selected ?? true)
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.text!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Sora',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w800,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation']!),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 20.0, 0.0),
                    child: Container(
                      width: widget.width?.toDouble(),
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  ),
                ],
              ),
            if (!widget.selected!)
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.text!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Sora',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 20.0, 0.0),
                    child: Container(
                      width: widget.width?.toDouble(),
                      height: 4.0,
                      decoration: BoxDecoration(),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
