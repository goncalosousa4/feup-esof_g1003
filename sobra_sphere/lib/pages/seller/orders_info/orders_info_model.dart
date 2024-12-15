import '/flutter_flow/flutter_flow_util.dart';
import 'orders_info_widget.dart' show OrdersInfoWidget;
import 'package:flutter/material.dart';

class OrdersInfoModel extends FlutterFlowModel<OrdersInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
