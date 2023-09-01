import '/backend/api_requests/api_calls.dart';
import '/components/juz_list_widget.dart';
import '/components/surah_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SurahViewRevModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for surahList component.
  late SurahListModel surahListModel;
  // Model for juzList component.
  late JuzListModel juzListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    surahListModel = createModel(context, () => SurahListModel());
    juzListModel = createModel(context, () => JuzListModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    tabBarController?.dispose();
    surahListModel.dispose();
    juzListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
