import '/flutter_flow/flutter_flow_util.dart';
import 'bare_biblio_widget.dart' show BareBiblioWidget;
import 'package:flutter/material.dart';

class BareBiblioModel extends FlutterFlowModel<BareBiblioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
