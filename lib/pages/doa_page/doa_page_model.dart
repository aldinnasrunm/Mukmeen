import '/backend/api_requests/api_calls.dart';
import '/components/list_doa_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DoaPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for listDoa component.
  late ListDoaModel listDoaModel1;
  // Model for listDoa component.
  late ListDoaModel listDoaModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listDoaModel1 = createModel(context, () => ListDoaModel());
    listDoaModel2 = createModel(context, () => ListDoaModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    listDoaModel1.dispose();
    listDoaModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
