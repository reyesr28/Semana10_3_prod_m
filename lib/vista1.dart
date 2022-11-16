import 'package:flutter/material.dart';

class vista1 extends StatefulWidget {
  const vista1({Key? key}) : super(key: key);

  @override
  State<vista1> createState() => _vista1State();
}

class _vista1State extends State<vista1> {

  final txtPro=TextEditingController();
  final txtPre=TextEditingController();
  final txtCan=TextEditingController();

  late double can,pre;
  double sub=0.0,igv=0.0,dscto=0.0,total=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Trabajando con setState'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            children: [

              Text('Venta de Productos',style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),),

              SizedBox(
                height: 15,
              ),

              TextFormField(
                controller: txtPro,
                decoration: InputDecoration(
                  hintText: 'Producto:',
                  labelText: 'Ingrese Producto:',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              TextFormField(
                controller: txtPre,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Precio:',
                  labelText: 'Ingrese Precio:',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              TextFormField(
                controller: txtCan,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Cantidad:',
                  labelText: 'Ingrese Cantidad:',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              ElevatedButton(
                  onPressed: (){
                      can=double.parse(txtCan.text);
                      pre=double.parse(txtPre.text);

                      setState(() {
                        sub=can*pre;
                        igv=sub*0.18;
                        dscto=sub*0.05;
                        total=sub+igv-dscto;
                      });

                      txtPre.clear();
                      txtCan.clear();
                      txtPro.clear();
                  },
                  child: Text('Calcular Venta')),

              SizedBox(
                height: 15,
              ),

              Text('Subtotal: $sub',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),

              SizedBox(
                height: 15,
              ),

              Text('Igv 18%: $igv',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),

              SizedBox(
                height: 15,
              ),

              Text('Dscto 5%: $dscto',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),

              SizedBox(
                height: 15,
              ),

              Text('Total a pagar: $total',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),

            ],
        ),
      ),


    );

  }
}
