import 'package:flutter/material.dart';
import 'package:castaneda0327/pantallas0327/panel0327/item_carro0327.dart';

class PanelPantalla0327 extends StatelessWidget {
  const PanelPantalla0327({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffb02525),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 25),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/CastanedaGabriela/Img_iOS/main/FlutterFlowAct12/logo.jpg"),
              ),
            )
          ],
          title: const Text(
            'Ferrari Castaneda',
            style: TextStyle(color: Color(0xffffffff)),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffc3c3c3),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Buscar 0327",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff000000),
                    )),
              ),
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/CastanedaGabriela/Img_iOS/main/FlutterFlowAct12/ferrarif8tributo.jpg"))),
            ),
            ListTile(
              title: Text("Vehiculos"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: Icon(Icons.filter_list_outlined),
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(15),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 15,
                children: [for (int i = 1; i <= 10; i++) const Itemcarro()],
              ),
            )
          ],
        ));
    ;
  }
}
