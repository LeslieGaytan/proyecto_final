import '../coment/coment_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../isesion/isesion_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CuentadesWidget extends StatefulWidget {
  const CuentadesWidget({Key key}) : super(key: key);

  @override
  _CuentadesWidgetState createState() => _CuentadesWidgetState();
}

class _CuentadesWidgetState extends State<CuentadesWidget> {
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
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: Text(
                    'Datos del desarrollador',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Work Sans',
                          color: Color(0xFFE41937),
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://github.com/LeslieGaytan/Poyecto-Ulll-Imagenes/blob/main/me.jpg?raw=true',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                child: ListTile(
                  title: Text(
                    'Nombre',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Work Sans',
                          color: Color(0xFF006491),
                        ),
                  ),
                  subtitle: Text(
                    'Leslie Yamileth Gaytan Herrera',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Work Sans',
                          color: FlutterFlowTheme.of(context).black600,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                child: ListTile(
                  title: Text(
                    'Grado y grupo',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Work Sans',
                          color: Color(0xFF006491),
                        ),
                  ),
                  subtitle: Text(
                    '6J-A',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Work Sans',
                          color: FlutterFlowTheme.of(context).black600,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                child: ListTile(
                  title: Text(
                    'Especialidad',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Work Sans',
                          color: Color(0xFF006491),
                        ),
                  ),
                  subtitle: Text(
                    'Programacion',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Work Sans',
                          color: FlutterFlowTheme.of(context).black600,
                        ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 250, 10, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'REGRESAR',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40,
                    color: Color(0xFFE41937),
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
      ),
    );
  }
}
