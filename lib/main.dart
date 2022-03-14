// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.deepPurple,
      ),
      
      home: const MyHomePage (title: 'KONOHA SENYU'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
int _gio=0;
class _MyHomePageState extends State<MyHomePage> {
 

  

  @override
  Widget build(BuildContext context) {
TextEditingController nombreZ =TextEditingController();
    TextEditingController direccionZ =TextEditingController();
    TextEditingController correoZ =TextEditingController();

    return Scaffold(
      appBar: AppBar(
       
       title: Text(widget.title),
      ),
      body: Center(
        
      child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            
   
            
            ListTile(
              title: const Text('Mujer :'),
              leading: 
              Radio(value: 0,
              groupValue:_gio , 
              onChanged: (newValue) {
                setState((){ _gio=0;});
              },)),
              ListTile(
              title: const Text('Hombre'),
              leading: 
              Radio(value: 1,
              groupValue:_gio ,
               onChanged: (newValue) {
                setState((){ _gio=1;});
              },)),
              
Container(
padding: const EdgeInsets.all(10),
child:  TextField(
  controller: nombreZ,
  autofocus: true,
  keyboardType: TextInputType.text,
  textInputAction: TextInputAction.send,
  autocorrect: true,
  textCapitalization: TextCapitalization.words,
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.black,
  ),
  cursorColor: Colors.blueGrey,
  cursorRadius: Radius.circular(15),
  cursorWidth: 15,
  decoration: InputDecoration(
    icon: Icon(Icons.info,color: Colors.deepPurple,),
    hintText: 'Nombre',
    hintStyle: TextStyle(color: Colors.deepPurpleAccent),
    helperText: "Nombre completo",
    contentPadding: EdgeInsets.all(15),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Colors.blueGrey,
        width: 3
      )
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Colors.deepPurpleAccent,
        width: 3
      )
    )
  ),
),
),

Container(
padding: const EdgeInsets.all(10),
child:  TextField(
  controller: direccionZ,
  autofocus: true,
  keyboardType: TextInputType.text,
  textInputAction: TextInputAction.send,
  autocorrect: true,
  textCapitalization: TextCapitalization.words,
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.black,
  ),
  cursorColor: Colors.blueGrey,
  cursorRadius: Radius.circular(15),
  cursorWidth: 15,
  decoration: InputDecoration(
    icon: Icon(Icons.info,color: Colors.deepPurple,),
    hintText: 'Direccion',
    hintStyle: TextStyle(color: Colors.deepPurpleAccent),
    helperText: "Direccion donde vive",
    contentPadding: EdgeInsets.all(15),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Colors.blueGrey,
        width: 3
      )
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Colors.deepPurpleAccent,
        width: 3
      )
    )
  ),
),
),
              Container(
padding: const EdgeInsets.all(10),
child:  TextField(
  controller: correoZ,
  autofocus: true,
  keyboardType: TextInputType.text,
  textInputAction: TextInputAction.send,
  autocorrect: true,
  textCapitalization: TextCapitalization.words,
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.black,
  ),
  cursorColor: Colors.blueGrey,
  cursorRadius: Radius.circular(15),
  cursorWidth: 15,
  decoration: InputDecoration(
    icon: Icon(Icons.info,color: Colors.deepPurple,),
    hintText: 'Correo',
    hintStyle: TextStyle(color: Colors.deepPurpleAccent),
    helperText: "Correo electronico profesional",
    contentPadding: EdgeInsets.all(15),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Colors.blueGrey,
        width: 3
      )
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: Colors.deepPurpleAccent,
        width: 3
      )
    )
  ),
),
),





            Container(
              padding: const EdgeInsets.all(25),
              child: FlatButton(
                child: const Text(
                  'Enviar',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                
                onPressed: (){

                 
                  showDialog(context: context, 
                  barrierDismissible: false,

                  builder: (context) =>AlertDialog(
                    title: const Text('Informacion del formulario'),
                    content:( Text(nombreZ.text)),
                    
                    actions: <Widget>[
                      FlatButton(
                        child: const Text('Aceptar'),
                        onPressed: () {
                          Navigator.of(context).pop('Aceptar');
                        },
                        ),
                         FlatButton(
                        child: const Text('Cancelar'),
                        onPressed: () {
                          Navigator.of(context).pop('Cancelar');
                        },
                        ),
                    ],
                  ),
                  );
                },
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                  
                ),
              ),
            ),
          ],
        ),
      ),
      );
           
           
  }
}
