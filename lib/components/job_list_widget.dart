import '/backend/backend.dart';
import '/components/job_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'job_list_model.dart';
export 'job_list_model.dart';

class JobListWidget extends StatefulWidget {
  const JobListWidget({
    Key? key,
    int? limit,
    String? jobType,
  })  : this.limit = limit ?? 5,
        this.jobType = jobType ?? 'Full-time',
        super(key: key);

  final int limit;
  final String jobType;

  @override
  _JobListWidgetState createState() => _JobListWidgetState();
}

class _JobListWidgetState extends State<JobListWidget> {
  late JobListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobListModel());
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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(),
                    child: FutureBuilder<List<JobsRecord>>(
                      future: queryJobsRecordOnce(
                        queryBuilder: (jobsRecord) => jobsRecord
                            .where('jobType', isEqualTo: widget.jobType)
                            .orderBy('applyDate'),
                        limit: 5,
                      ),
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
                        List<JobsRecord> listViewJobsRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewJobsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewJobsRecord =
                                listViewJobsRecordList[listViewIndex];
                            return wrapWithModel(
                              model: _model.jobCardModels.getModel(
                                listViewJobsRecord.index.toString(),
                                listViewIndex,
                              ),
                              updateCallback: () => setState(() {}),
                              child: JobCardWidget(
                                key: Key(
                                  'Key8f5_${listViewJobsRecord.index.toString()}',
                                ),
                                company: listViewJobsRecord.company,
                                position: listViewJobsRecord.position,
                                applyDate: listViewJobsRecord.applyDate!,
                                logo: listViewJobsRecord.logo,
                                locationStr: listViewJobsRecord.locationStr,
                                likeBool: listViewJobsRecord.likeTest,
                                applyBool: listViewJobsRecord.applyTest,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
