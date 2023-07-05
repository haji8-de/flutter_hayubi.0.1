import '/backend/backend.dart';
import '/components/contents_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'contents_list_model.dart';
export 'contents_list_model.dart';

class ContentsListWidget extends StatefulWidget {
  const ContentsListWidget({
    Key? key,
    String? jobType,
  })  : this.jobType = jobType ?? 'Job',
        super(key: key);

  final String jobType;

  @override
  _ContentsListWidgetState createState() => _ContentsListWidgetState();
}

class _ContentsListWidgetState extends State<ContentsListWidget> {
  late ContentsListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentsListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return PagedListView<DocumentSnapshot<Object?>?, PostsRecord>(
      pagingController: () {
        final Query<Object?> Function(Query<Object?>) queryBuilder =
            (postsRecord) => postsRecord
                .where('post_type', isEqualTo: widget.jobType)
                .orderBy('time_posted', descending: true);
        if (_model.pagingController != null) {
          final query = queryBuilder(PostsRecord.collection);
          if (query != _model.pagingQuery) {
            // The query has changed
            _model.pagingQuery = query;
            _model.streamSubscriptions.forEach((s) => s?.cancel());
            _model.streamSubscriptions.clear();
            _model.pagingController!.refresh();
          }
          return _model.pagingController!;
        }

        _model.pagingController = PagingController(firstPageKey: null);
        _model.pagingQuery = queryBuilder(PostsRecord.collection);
        _model.pagingController!.addPageRequestListener((nextPageMarker) {
          queryPostsRecordPage(
            queryBuilder: (postsRecord) => postsRecord
                .where('post_type', isEqualTo: widget.jobType)
                .orderBy('time_posted', descending: true),
            nextPageMarker: nextPageMarker,
            pageSize: 4,
            isStream: true,
          ).then((page) {
            _model.pagingController!.appendPage(
              page.data,
              page.nextPageMarker,
            );
            final streamSubscription = page.dataStream?.listen((data) {
              data.forEach((item) {
                final itemIndexes = _model.pagingController!.itemList!
                    .asMap()
                    .map((k, v) => MapEntry(v.reference.id, k));
                final index = itemIndexes[item.reference.id];
                final items = _model.pagingController!.itemList!;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  _model.pagingController!.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
              setState(() {});
            });
            _model.streamSubscriptions.add(streamSubscription);
          });
        });
        return _model.pagingController!;
      }(),
      padding: EdgeInsets.zero,
      reverse: false,
      scrollDirection: Axis.vertical,
      builderDelegate: PagedChildBuilderDelegate<PostsRecord>(
        // Customize what your widget looks like when it's loading the first page.
        firstPageProgressIndicatorBuilder: (_) => Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
        ),

        itemBuilder: (context, _, listViewIndex) {
          final listViewPostsRecord =
              _model.pagingController!.itemList![listViewIndex];
          return wrapWithModel(
            model: _model.contentsCardModels.getModel(
              listViewIndex.toString(),
              listViewIndex,
            ),
            updateCallback: () => setState(() {}),
            child: ContentsCardWidget(
              key: Key(
                'Key2ew_${listViewIndex.toString()}',
              ),
              title: listViewPostsRecord.postTitle,
              desc: listViewPostsRecord.postDescription,
              likeNum: listViewPostsRecord.likes.length,
              commentNum: listViewPostsRecord.numComments,
              createAt: listViewPostsRecord.timePosted,
              author: listViewPostsRecord.postUser,
              postRef: listViewPostsRecord.reference,
            ),
          );
        },
      ),
    );
  }
}
