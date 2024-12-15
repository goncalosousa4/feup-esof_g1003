import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'added_with_sucess_model.dart';
export 'added_with_sucess_model.dart';

class AddedWithSucessWidget extends StatefulWidget {
  const AddedWithSucessWidget({super.key});

  @override
  State<AddedWithSucessWidget> createState() => _AddedWithSucessWidgetState();
}

class _AddedWithSucessWidgetState extends State<AddedWithSucessWidget> {
  late AddedWithSucessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddedWithSucessModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      height: 225.0,
      decoration: BoxDecoration(
        color: const Color(0xFFD2D0CC),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          'Bag added with success!',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Urbanist',
                color: FlutterFlowTheme.of(context).textGreen,
                fontSize: 30.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
