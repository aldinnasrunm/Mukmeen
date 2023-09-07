import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/jadwal_sholat_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for locPicker widget.
  String? locPickerValue;
  FormFieldController<String>? locPickerValueController;
  // Stores action output result for [Backend Call - API (idKota)] action in locPicker widget.
  ApiCallResponse? idDariKota;
  // Model for JadwalSholat component.
  late JadwalSholatModel jadwalSholatModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    jadwalSholatModel = createModel(context, () => JadwalSholatModel());
  }

  void dispose() {
    unfocusNode.dispose();
    jadwalSholatModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
