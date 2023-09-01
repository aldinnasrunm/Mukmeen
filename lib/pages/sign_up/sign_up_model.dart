import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tv_email widget.
  TextEditingController? tvEmailController;
  String? Function(BuildContext, String?)? tvEmailControllerValidator;
  // State field(s) for tv_password widget.
  TextEditingController? tvPasswordController;
  late bool tvPasswordVisibility;
  String? Function(BuildContext, String?)? tvPasswordControllerValidator;
  // State field(s) for tv_password_sub widget.
  TextEditingController? tvPasswordSubController;
  late bool tvPasswordSubVisibility;
  String? Function(BuildContext, String?)? tvPasswordSubControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tvPasswordVisibility = false;
    tvPasswordSubVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tvEmailController?.dispose();
    tvPasswordController?.dispose();
    tvPasswordSubController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
