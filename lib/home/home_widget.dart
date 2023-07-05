import '/components/accommodations_widget.dart';
import '/components/nav_item_widget.dart';
import '/components/travel_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Home'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '1gppzjmc' /* McRoskey */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Sora',
                                fontSize: 26.0,
                              ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'wzu85sib' /* FAMILY VACATION 2023 */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Sora',
                                color: FlutterFlowTheme.of(context).lightGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).alternate,
                            FlutterFlowTheme.of(context).fireOpal
                          ],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 2.0, 2.0, 2.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/mcroskey-headshot.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'HOME_PAGE_Container_yxpagj2c_ON_TAP');
                          logFirebaseEvent('NavItem_update_app_state');
                          FFAppState().update(() {
                            FFAppState().activeTab = 0;
                          });
                        },
                        child: wrapWithModel(
                          model: _model.navItemModel1,
                          updateCallback: () => setState(() {}),
                          child: NavItemWidget(
                            text: 'TRAVEL',
                            selected: FFAppState().activeTab.toString() == '0',
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('HOME_PAGE_Container_c3ibqglu_ON_TAP');
                        logFirebaseEvent('NavItem_update_app_state');
                        FFAppState().update(() {
                          FFAppState().activeTab = 1;
                        });
                      },
                      child: wrapWithModel(
                        model: _model.navItemModel2,
                        updateCallback: () => setState(() {}),
                        child: NavItemWidget(
                          text: 'ACCOMMODATIONS',
                          selected: FFAppState().activeTab.toString() == '1',
                          width: 132,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent('HOME_PAGE_Container_72pmd8nl_ON_TAP');
                        logFirebaseEvent('NavItem_update_app_state');
                        FFAppState().update(() {
                          FFAppState().activeTab = 2;
                        });
                      },
                      child: wrapWithModel(
                        model: _model.navItemModel3,
                        updateCallback: () => setState(() {}),
                        child: NavItemWidget(
                          text: 'ACTIVITIES',
                          selected: FFAppState().activeTab.toString() == '2',
                          width: 71,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'HOME_PAGE_Container_h87qsce2_ON_TAP');
                          logFirebaseEvent('NavItem_update_app_state');
                          FFAppState().update(() {
                            FFAppState().activeTab = 3;
                          });
                        },
                        child: wrapWithModel(
                          model: _model.navItemModel4,
                          updateCallback: () => setState(() {}),
                          child: NavItemWidget(
                            text: 'FOOD',
                            selected: FFAppState().activeTab.toString() == '3',
                            width: 38,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  children: [
                    if (FFAppState().activeTab == 0)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.travelModel,
                          updateCallback: () => setState(() {}),
                          child: TravelWidget(),
                        ),
                      ),
                    if (FFAppState().activeTab == 1)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.accommodationsModel,
                          updateCallback: () => setState(() {}),
                          child: AccommodationsWidget(),
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
