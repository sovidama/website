import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'footer_link_model.dart';
export 'footer_link_model.dart';

class FooterLinkWidget extends StatefulWidget {
  const FooterLinkWidget({
    super.key,
    String? label,
  }) : this.label = label ?? 'Solutions';

  final String label;

  @override
  State<FooterLinkWidget> createState() => _FooterLinkWidgetState();
}

class _FooterLinkWidgetState extends State<FooterLinkWidget> {
  late FooterLinkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterLinkModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      valueOrDefault<String>(
        widget.label,
        'Solutions',
      ),
      style: FlutterFlowTheme.of(context).bodySmall.override(
            font: GoogleFonts.inter(
              fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
            ),
            color: FlutterFlowTheme.of(context).secondaryText,
            letterSpacing: 0.0,
            fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
            fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
            lineHeight: 1.5,
          ),
    );
  }
}
