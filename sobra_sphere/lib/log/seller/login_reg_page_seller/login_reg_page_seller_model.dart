import '/flutter_flow/flutter_flow_util.dart';
import 'login_reg_page_seller_widget.dart' show LoginRegPageSellerWidget;
import 'package:flutter/material.dart';

class LoginRegPageSellerModel
    extends FlutterFlowModel<LoginRegPageSellerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
