import '/components/workflow_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'workflow_card_child2432_widget.dart' show WorkflowCardChild2432Widget;
import 'package:flutter/material.dart';

class WorkflowCardChild2432Model
    extends FlutterFlowModel<WorkflowCardChild2432Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for WorkflowItem.
  late WorkflowItemModel workflowItemModel1;
  // Model for WorkflowItem.
  late WorkflowItemModel workflowItemModel2;
  // Model for WorkflowItem.
  late WorkflowItemModel workflowItemModel3;
  // Model for WorkflowItem.
  late WorkflowItemModel workflowItemModel4;

  @override
  void initState(BuildContext context) {
    workflowItemModel1 = createModel(context, () => WorkflowItemModel());
    workflowItemModel2 = createModel(context, () => WorkflowItemModel());
    workflowItemModel3 = createModel(context, () => WorkflowItemModel());
    workflowItemModel4 = createModel(context, () => WorkflowItemModel());
  }

  @override
  void dispose() {
    workflowItemModel1.dispose();
    workflowItemModel2.dispose();
    workflowItemModel3.dispose();
    workflowItemModel4.dispose();
  }
}
