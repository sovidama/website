import '/components/workflow_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'workflow_card_child3234_model.dart';
export 'workflow_card_child3234_model.dart';

class WorkflowCardChild3234Widget extends StatefulWidget {
  const WorkflowCardChild3234Widget({super.key});

  @override
  State<WorkflowCardChild3234Widget> createState() =>
      _WorkflowCardChild3234WidgetState();
}

class _WorkflowCardChild3234WidgetState
    extends State<WorkflowCardChild3234Widget> {
  late WorkflowCardChild3234Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkflowCardChild3234Model());

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
            color: FlutterFlowTheme.of(context).secondary,
            label: FFLocalizations.of(context).getText(
              'lk4anw6b' /* Automated Reports */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel2,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).secondary,
            label: FFLocalizations.of(context).getText(
              '1ihdaikc' /* Comparative Analysis */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel3,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).secondary,
            label: FFLocalizations.of(context).getText(
              'tlczfvwn' /* Technical Schedules */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel4,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).secondary,
            label: FFLocalizations.of(context).getText(
              'epq8ej1h' /* Organized Information */,
            ),
          ),
        ),
      ],
    );
  }
}
