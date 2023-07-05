import '/backend/backend.dart';
import '/components/contents_list_widget.dart';
import '/components/create_content_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'community_model.dart';
export 'community_model.dart';

class CommunityWidget extends StatefulWidget {
  const CommunityWidget({Key? key}) : super(key: key);

  @override
  _CommunityWidgetState createState() => _CommunityWidgetState();
}

class _CommunityWidgetState extends State<CommunityWidget> {
  late CommunityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunityModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'community'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () async {
            logFirebaseEvent('COMMUNITY_FloatingActionButton_ldjtp51a_');
            logFirebaseEvent('FloatingActionButton_alert_dialog');
            await showAlignedDialog(
              context: context,
              isGlobal: true,
              avoidOverflow: false,
              targetAnchor: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              followerAnchor: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              builder: (dialogContext) {
                return Material(
                  color: Colors.transparent,
                  child: CreateContentWidget(
                    loginUser: FFAppState().loginUserRef,
                    userEmail: '',
                    postType: _model.jobType,
                  ),
                );
              },
            ).then((value) => setState(() {}));
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          child: Icon(
            Icons.create_rounded,
            color: Colors.white,
            size: 24.0,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            '83ms7vpo' /* Community */,
          ),
          style: FlutterFlowTheme.of(context).displaySmall.override(
                fontFamily: 'Sora',
                color: FlutterFlowTheme.of(context).info,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: FutureBuilder<List<PostTypeRecord>>(
                      future: queryPostTypeRecordOnce(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          );
                        }
                        List<PostTypeRecord> choiceChipsPostTypeRecordList =
                            snapshot.data!;
                        return FlutterFlowChoiceChips(
                          options: choiceChipsPostTypeRecordList
                              .map((e) => e.postType)
                              .toList()
                              .map((label) => ChipData(label))
                              .toList(),
                          onChanged: (val) async {
                            setState(
                                () => _model.choiceChipsValue = val?.first);
                            logFirebaseEvent(
                                'COMMUNITY_ChoiceChips_c3k1f50v_ON_FORM_W');
                            logFirebaseEvent('ChoiceChips_update_widget_state');
                            setState(() {
                              _model.jobType = _model.choiceChipsValue;
                            });
                          },
                          selectedChipStyle: ChipStyle(
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Sora',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                ),
                            iconColor: FlutterFlowTheme.of(context).info,
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Sora',
                                  color: FlutterFlowTheme.of(context).accent2,
                                  fontWeight: FontWeight.w500,
                                ),
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                            iconSize: 18.0,
                            elevation: 4.0,
                          ),
                          chipSpacing: 8.0,
                          rowSpacing: 22.0,
                          multiselect: false,
                          initialized: _model.choiceChipsValue != null,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController ??=
                              FormFieldController<List<String>>(
                            [
                              valueOrDefault<String>(
                                choiceChipsPostTypeRecordList.first.index
                                    .toString(),
                                '1',
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: wrapWithModel(
                model: _model.contentsListModel,
                updateCallback: () => setState(() {}),
                child: ContentsListWidget(
                  jobType: _model.jobType,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
