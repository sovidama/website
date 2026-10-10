import '/components/local_service_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'solution_area_card_child432_model.dart';
export 'solution_area_card_child432_model.dart';

class SolutionAreaCardChild432Widget extends StatefulWidget {
  const SolutionAreaCardChild432Widget({super.key});

  @override
  State<SolutionAreaCardChild432Widget> createState() =>
      _SolutionAreaCardChild432WidgetState();
}

class _SolutionAreaCardChild432WidgetState
    extends State<SolutionAreaCardChild432Widget> {
  late SolutionAreaCardChild432Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolutionAreaCardChild432Model());

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        wrapWithModel(
          model: _model.localServiceItemModel1,
          updateCallback: () => safeSetState(() {}),
          child: LocalServiceItemWidget(
            label: FFLocalizations.of(context).getText(
              'v9hjh14o' /* Business Model & Value Proposi... */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.localServiceItemModel2,
          updateCallback: () => safeSetState(() {}),
          child: LocalServiceItemWidget(
            label: FFLocalizations.of(context).getText(
              'v77x1gnu' /* Market Validation & Financial ... */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.localServiceItemModel3,
          updateCallback: () => safeSetState(() {}),
          child: LocalServiceItemWidget(
            label: FFLocalizations.of(context).getText(
              'xeaevsk5' /* Growth Strategy & Pricing */,
            ),
          ),
        ),
        wrapWithModel(
          model: _model.localServiceItemModel4,
          updateCallback: () => safeSetState(() {}),
          child: LocalServiceItemWidget(
            label: FFLocalizations.of(context).getText(
              'e7m4hn0h' /* Fundraising Preparation */,
            ),
          ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
