import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'juz_list_model.dart';
export 'juz_list_model.dart';

class JuzListWidget extends StatefulWidget {
  const JuzListWidget({
    Key? key,
    required this.juzukData,
  }) : super(key: key);

  final List<dynamic>? juzukData;

  @override
  _JuzListWidgetState createState() => _JuzListWidgetState();
}

class _JuzListWidgetState extends State<JuzListWidget> {
  late JuzListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JuzListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final juzukDataChild = widget.juzukData!.toList();
        return ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: juzukDataChild.length,
          itemBuilder: (context, juzukDataChildIndex) {
            final juzukDataChildItem = juzukDataChild[juzukDataChildIndex];
            return Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(29.0, 8.0, 29.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 32.0, 0.0),
                      child: Container(
                        width: 41.1,
                        height: 41.1,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/nomorsurahframe.svg',
                                width: 41.1,
                                height: 41.1,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                getJsonField(
                                  juzukDataChildItem,
                                  r'''$.id''',
                                ).toString(),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'JUZ',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Text(
                          getJsonField(
                            juzukDataChildItem,
                            r'''$.id''',
                          ).toString(),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
