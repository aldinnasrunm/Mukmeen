import '/backend/api_requests/api_calls.dart';
import '/components/ayat_list_j_b_i_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class AyatViewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;
  // Model for ayatListJBI component.
  late AyatListJBIModel ayatListJBIModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    ayatListJBIModel = createModel(context, () => AyatListJBIModel());
  }

  void dispose() {
    unfocusNode.dispose();
    ayatListJBIModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
