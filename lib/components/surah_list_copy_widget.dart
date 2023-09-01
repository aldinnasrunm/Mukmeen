import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'surah_list_copy_model.dart';
export 'surah_list_copy_model.dart';

class SurahListCopyWidget extends StatefulWidget {
  const SurahListCopyWidget({Key? key}) : super(key: key);

  @override
  _SurahListCopyWidgetState createState() => _SurahListCopyWidgetState();
}

class _SurahListCopyWidgetState extends State<SurahListCopyWidget> {
  late SurahListCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SurahListCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return RefreshIndicator(
      onRefresh: () async {
        setState(() => _model.listViewPagingController?.refresh());
        await _model.waitForOnePage();
      },
      child: PagedListView<ApiPagingParams, dynamic>(
        pagingController: _model.setListViewController(
          (nextPageMarker) => SurahAPICall.call(),
        ),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        reverse: false,
        scrollDirection: Axis.vertical,
        builderDelegate: PagedChildBuilderDelegate<dynamic>(
          // Customize what your widget looks like when it's loading the first page.
          firstPageProgressIndicatorBuilder: (_) => Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          ),
          // Customize what your widget looks like when it's loading another page.
          newPageProgressIndicatorBuilder: (_) => Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          ),

          itemBuilder: (context, _, dataSurahIndex) {
            final dataSurahItem =
                _model.listViewPagingController!.itemList![dataSurahIndex];
            return InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'ayatView',
                  queryParameters: {
                    'nomorSurah': serializeParam(
                      getJsonField(
                        dataSurahItem,
                        r'''$.nomor''',
                      ),
                      ParamType.int,
                    ),
                    'namaSurah': serializeParam(
                      getJsonField(
                        dataSurahItem,
                        r'''$.nama_latin''',
                      ).toString(),
                      ParamType.String,
                    ),
                    'tempatTurun': serializeParam(
                      getJsonField(
                        dataSurahItem,
                        r'''$.tempat_turun''',
                      ).toString(),
                      ParamType.String,
                    ),
                  }.withoutNulls,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Container(
                width: 100.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 29.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 48.0,
                          height: 46.21,
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Text(
                                getJsonField(
                                  dataSurahItem,
                                  r'''$.nomor''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/nomorsurahframe.svg',
                                  width: 41.0,
                                  height: 46.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              getJsonField(
                                dataSurahItem,
                                r'''$.nama_latin''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  getJsonField(
                                    dataSurahItem,
                                    r'''$.arti''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontSize: 8.0,
                                      ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                ),
                                Text(
                                  getJsonField(
                                    dataSurahItem,
                                    r'''$.jumlah_ayat''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontSize: 8.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Text(
                            getJsonField(
                              dataSurahItem,
                              r'''$.nama''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Amiri Quran',
                                  fontSize: 28.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
