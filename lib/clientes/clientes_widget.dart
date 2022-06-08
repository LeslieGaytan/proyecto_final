import '../coment/coment_widget.dart';
import '../compravip/compravip_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../isesion/isesion_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientesWidget extends StatefulWidget {
  const ClientesWidget({Key key}) : super(key: key);

  @override
  _ClientesWidgetState createState() => _ClientesWidgetState();
}

class _ClientesWidgetState extends State<ClientesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF006491),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Image.asset(
                'assets/images/descarga_(1).png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Domino\'s',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Work Sans',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 55,
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 33,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 300),
                  reverseDuration: Duration(milliseconds: 300),
                  child: IsesionWidget(),
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 10, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ComentWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.insert_comment,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Conoce los beneficios de ser un cliente VIP',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Work Sans',
                        color: Color(0xFFE41937),
                      ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Image.asset(
                      'assets/images/tarjeta.JPG',
                      width: 100,
                      height: 190,
                      fit: BoxFit.fitHeight,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ListTile(
                        leading: Icon(
                          Icons.beenhere,
                          color: Color(0xFFF5F5F5),
                        ),
                        title: Text(
                          'Promociones mensuales exclusivas',
                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryBackground,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        tileColor: Color(0xFFE41937),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ListTile(
                        leading: Icon(
                          Icons.beenhere,
                          color: Color(0xFFF5F5F5),
                        ),
                        title: Text(
                          'Regalo de cumpleaños',
                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryBackground,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        tileColor: Color(0xFFE41937),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ListTile(
                        leading: Icon(
                          Icons.beenhere,
                          color: Color(0xFFF5F5F5),
                        ),
                        title: Text(
                          '1 pizza a tu eleccion gratis cada mes',
                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryBackground,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        tileColor: Color(0xFFE41937),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ListTile(
                        leading: Icon(
                          Icons.beenhere,
                          color: Color(0xFFF5F5F5),
                        ),
                        title: Text(
                          '10% de descuento en todas tus compras',
                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryBackground,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        tileColor: Color(0xFFE41937),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: ListTile(
                        leading: Icon(
                          Icons.beenhere,
                          color: Color(0xFFF5F5F5),
                        ),
                        title: Text(
                          'Costo \$700',
                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryBackground,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        tileColor: Color(0xFFE41937),
                        dense: false,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 30, 5, 5),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.bottomToTop,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: CompravipWidget(),
                            ),
                          );
                        },
                        text: 'COMPRAR AHORA',
                        options: FFButtonOptions(
                          width: 220,
                          height: 40,
                          color: Color(0xFF006491),
                          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Work Sans',
                                color: Colors.white,
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
