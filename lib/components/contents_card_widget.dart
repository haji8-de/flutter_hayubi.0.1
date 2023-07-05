import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contents_card_model.dart';
export 'contents_card_model.dart';

class ContentsCardWidget extends StatefulWidget {
  const ContentsCardWidget({
    Key? key,
    this.title,
    this.desc,
    this.likeNum,
    this.commentNum,
    this.createAt,
    this.author,
    this.postRef,
  }) : super(key: key);

  final String? title;
  final String? desc;
  final int? likeNum;
  final int? commentNum;
  final DateTime? createAt;
  final DocumentReference? author;
  final DocumentReference? postRef;

  @override
  _ContentsCardWidgetState createState() => _ContentsCardWidgetState();
}

class _ContentsCardWidgetState extends State<ContentsCardWidget> {
  late ContentsCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentsCardModel());
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                StreamBuilder<UsersRecord>(
                  stream: UsersRecord.getDocument(widget.author!),
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
                    final circleImageUsersRecord = snapshot.data!;
                    return Container(
                      width: 50.0,
                      height: 50.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        circleImageUsersRecord.photoUrl,
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StreamBuilder<UsersRecord>(
                        stream: UsersRecord.getDocument(widget.author!),
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
                          final textUsersRecord = snapshot.data!;
                          return Text(
                            valueOrDefault<String>(
                              textUsersRecord.email,
                              'null',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).titleMedium,
                          );
                        },
                      ),
                      Text(
                        dateTimeFormat(
                          'relative',
                          widget.createAt,
                          locale:
                              FFLocalizations.of(context).languageShortCode ??
                                  FFLocalizations.of(context).languageCode,
                        ),
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(65.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 7.0),
                  child: Text(
                    widget.title!,
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).titleMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Text(
                    widget.desc!,
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(65.0, 0.0, 16.0, 4.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ToggleIcon(
                            onPressed: () async {
                              setState(() => FFAppState().showDetails1 =
                                  !FFAppState().showDetails1);
                              logFirebaseEvent(
                                  'CONTENTS_CARD_ToggleIcon_exy6ti6w_ON_TOG');
                              if (true == false) {
                                logFirebaseEvent('ToggleIcon_backend_call');

                                await widget.postRef!.update({
                                  'likes': FieldValue.arrayUnion(
                                      [currentUserReference]),
                                });
                              } else {
                                logFirebaseEvent('ToggleIcon_backend_call');

                                await widget.postRef!.update({
                                  'likes': FieldValue.arrayRemove(
                                      [currentUserReference]),
                                });
                              }
                            },
                            value: FFAppState().showDetails1,
                            onIcon: Icon(
                              Icons.thumb_up_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 25.0,
                            ),
                            offIcon: Icon(
                              Icons.thumb_up_outlined,
                              color: FlutterFlowTheme.of(context).grayIcon,
                              size: 25.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.likeNum?.toString(),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.mode_comment_outlined,
                          color: FlutterFlowTheme.of(context).grayIcon,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.commentNum?.toString(),
                              '0',
                            ),
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
