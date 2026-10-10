import '/components/service_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'core_br_model.dart';
export 'core_br_model.dart';

class CoreBrWidget extends StatefulWidget {
  const CoreBrWidget({super.key});

  @override
  State<CoreBrWidget> createState() => _CoreBrWidgetState();
}

class _CoreBrWidgetState extends State<CoreBrWidget> {
  late CoreBrModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoreBrModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: FFAppState().country == 'Br',
      child: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width > 767.0 ? 64.0 : 32.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width > 767.0 ? 128.0 : 64.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width > 767.0 ? 64.0 : 32.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width > 767.0 ? 128.0 : 64.0,
                0.0,
              )),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'q7ia7o8a' /* OUR CORE FOCUS */,
                      ),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                            lineHeight: 1.3,
                          ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '1pslpssy' /* Four Pillars of Technical Serv... */,
                      ),
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontStyle,
                                lineHeight: 1.2,
                              ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                Wrap(
                  spacing: 24.0,
                  runSpacing: 24.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          RegularizacaoWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: wrapWithModel(
                        model: _model.serviceCardModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: ServiceCardWidget(
                          desc: FFLocalizations.of(context).getText(
                            'pdhua7uv' /* Complete property regularizati... */,
                          ),
                          icon: Icon(
                            Icons.architecture_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          title: FFLocalizations.of(context).getText(
                            'wevqp65e' /* Regularization */,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          AmbientalWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: wrapWithModel(
                        model: _model.serviceCardModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: ServiceCardWidget(
                          desc: FFLocalizations.of(context).getText(
                            '35xwn5ts' /* Licensing, impact assessments,... */,
                          ),
                          icon: Icon(
                            Icons.eco_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          title: FFLocalizations.of(context).getText(
                            'lymyrjxc' /* Environmental */,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          RegularizacaoWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: wrapWithModel(
                        model: _model.serviceCardModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: ServiceCardWidget(
                          desc: FFLocalizations.of(context).getText(
                            'dkwd5z0z' /* Structural analysis, project m... */,
                          ),
                          icon: Icon(
                            Icons.business_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          title: FFLocalizations.of(context).getText(
                            'isga8lmt' /* Properties */,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          ServicosWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: wrapWithModel(
                        model: _model.serviceCardModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: ServiceCardWidget(
                          desc: FFLocalizations.of(context).getText(
                            'yzndqkxw' /* Specialized inspections, diagn... */,
                          ),
                          icon: Icon(
                            Icons.settings_suggest_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          title: FFLocalizations.of(context).getText(
                            '02nlbell' /* Technical Services */,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 48.0)),
            ),
          ),
        ),
      ),
    );
  }
}
