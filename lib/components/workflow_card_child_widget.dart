import '/components/workflow_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'workflow_card_child_model.dart';
export 'workflow_card_child_model.dart';

class WorkflowCardChildWidget extends StatefulWidget {
  const WorkflowCardChildWidget({super.key});

  @override
  State<WorkflowCardChildWidget> createState() =>
      _WorkflowCardChildWidgetState();
}

class _WorkflowCardChildWidgetState extends State<WorkflowCardChildWidget> {
  late WorkflowCardChildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkflowCardChildModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        wrapWithModel(
          model: _model.workflowItemModel1,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).primary,
            label: FFLocalizations.of(context).getText(
              'pkm4u3cp' /* High-Res Photography */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel2,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).primary,
            label: FFLocalizations.of(context).getText(
              'j43b5m87' /* Precision Measurements */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel3,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).primary,
            label: FFLocalizations.of(context).getText(
              'doly03pb' /* Aerial Capture (Drones) */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel4,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).primary,
            label: FFLocalizations.of(context).getText(
              'l4st6t5y' /* Field Observations */,
            ),
          ),
        ),
      ],
    );
  }
}
