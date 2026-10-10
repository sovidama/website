import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'workflow_item_model.dart';
export 'workflow_item_model.dart';

class WorkflowItemWidget extends StatefulWidget {
  const WorkflowItemWidget({
    super.key,
    Color? color,
    String? label,
  })  : this.color = color ?? const Color(0x00000000),
        this.label = label ?? 'High-Res Photography';

  final Color color;
  final String label;

  @override
  State<WorkflowItemWidget> createState() => _WorkflowItemWidgetState();
}

class _WorkflowItemWidgetState extends State<WorkflowItemWidget> {
  late WorkflowItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkflowItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.check_circle_outline_rounded,
          color: valueOrDefault<Color>(
            widget.color,
            FlutterFlowTheme.of(context).primary,
          ),
          size: 16.0,
        ),
        Text(
          valueOrDefault<String>(
            widget.label,
            'High-Res Photography',
          ),
          style: FlutterFlowTheme.of(context).bodySmall.override(
                font: GoogleFonts.inter(
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                lineHeight: 1.5,
              ),
        ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
