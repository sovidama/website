import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'diagnostic_item2_model.dart';
export 'diagnostic_item2_model.dart';

class DiagnosticItem2Widget extends StatefulWidget {
  const DiagnosticItem2Widget({
    super.key,
    String? label,
  }) : this.label = label ?? 'What exists?';

  final String label;

  @override
  State<DiagnosticItem2Widget> createState() => _DiagnosticItem2WidgetState();
}

class _DiagnosticItem2WidgetState extends State<DiagnosticItem2Widget> {
  late DiagnosticItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiagnosticItem2Model());

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
          Icons.help_outline_rounded,
          color: FlutterFlowTheme.of(context).tertiary,
          size: 16.0,
        ),
        Text(
          valueOrDefault<String>(
            widget.label,
            'What exists?',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.55,
              ),
        ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
