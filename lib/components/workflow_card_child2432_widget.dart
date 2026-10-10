import '/components/workflow_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'workflow_card_child2432_model.dart';
export 'workflow_card_child2432_model.dart';

class WorkflowCardChild2432Widget extends StatefulWidget {
  const WorkflowCardChild2432Widget({super.key});

  @override
  State<WorkflowCardChild2432Widget> createState() =>
      _WorkflowCardChild2432WidgetState();
}

class _WorkflowCardChild2432WidgetState
    extends State<WorkflowCardChild2432Widget> {
  late WorkflowCardChild2432Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkflowCardChild2432Model());

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
            color: FlutterFlowTheme.of(context).tertiary,
            label: FFLocalizations.of(context).getText(
              '6re2byqi' /* Image Processing */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel2,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).tertiary,
            label: FFLocalizations.of(context).getText(
              's11zczvr' /* Georeferencing */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel3,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).tertiary,
            label: FFLocalizations.of(context).getText(
              'ks7se4xa' /* Digital Models (3D) */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.workflowItemModel4,
          updateCallback: () => safeSetState(() {}),
          child: WorkflowItemWidget(
            color: FlutterFlowTheme.of(context).tertiary,
            label: FFLocalizations.of(context).getText(
              'rutk2n95' /* Document Management */,
            ),
          ),
        ),
      ],
    );
  }
}
