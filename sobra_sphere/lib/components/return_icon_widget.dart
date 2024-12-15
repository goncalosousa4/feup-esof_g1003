import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'return_icon_model.dart';
export 'return_icon_model.dart';

class ReturnIconWidget extends StatefulWidget {
  const ReturnIconWidget({super.key});

  @override
  State<ReturnIconWidget> createState() => _ReturnIconWidgetState();
}

class _ReturnIconWidgetState extends State<ReturnIconWidget> {
  late ReturnIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReturnIconModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-0.97, -0.96),
      child: FlutterFlowIconButton(
        borderColor: const Color(0x00FFFFFF),
        borderRadius: 20.0,
        borderWidth: 1.0,
        buttonSize: 40.0,
        fillColor: const Color(0x00FFFFFF),
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xFF367168),
          size: 24.0,
        ),
        onPressed: () async {
          context.pushNamed(
            'login_regPage',
            extra: <String, dynamic>{
              kTransitionInfoKey: const TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.leftToRight,
                duration: Duration(milliseconds: 200),
              ),
            },
          );
        },
      ),
    );
  }
}
