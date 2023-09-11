import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ayat_list_j_b_i_model.dart';
export 'ayat_list_j_b_i_model.dart';

class AyatListJBIWidget extends StatefulWidget {
  const AyatListJBIWidget({
    Key? key,
    required this.ayatListTerkait,
  }) : super(key: key);

  final List<dynamic>? ayatListTerkait;

  @override
  _AyatListJBIWidgetState createState() => _AyatListJBIWidgetState();
}

class _AyatListJBIWidgetState extends State<AyatListJBIWidget> {
  late AyatListJBIModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AyatListJBIModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 29.0, 0.0),
      child: Builder(
        builder: (context) {
          final ayat = widget.ayatListTerkait!.toList();
          return ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: ayat.length,
            separatorBuilder: (_, __) => SizedBox(height: 22.0),
            itemBuilder: (context, ayatIndex) {
              final ayatItem = ayat[ayatIndex];
              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: Container(
                                width: 41.1,
                                height: 42.28,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Text(
                                        getJsonField(
                                          ayatItem,
                                          r'''$.nomor''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/nomorsurahframe.svg',
                                        width: 41.1,
                                        height: 42.21,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            if (!FFAppState().isMurajaah)
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.00, 0.00),
                                  child: Text(
                                    getJsonField(
                                      ayatItem,
                                      r'''$.ar''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Amiri Quran',
                                          fontSize: 22.0,
                                        ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        if (FFAppState().isJBI && !FFAppState().isMurajaah)
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                getJsonField(
                                  ayatItem,
                                  r'''$.signCode''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'KodTanganQuran',
                                      fontSize: 42.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        if (!FFAppState().isMurajaah)
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 22.0),
                              child: Text(
                                getJsonField(
                                  ayatItem,
                                  r'''$.idn''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
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
          );
        },
      ),
    );
  }
}
