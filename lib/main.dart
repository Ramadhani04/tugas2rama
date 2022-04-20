import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Produk Laptop',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'PRODUK LAPTOP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: ListTile(
                      leading: Image.network("https://www.softcom.co.id/wp-content/uploads/2021/04/Lenovo-IdeaPad-Slim-5-14ARE05-81YM00EVID-2.jpg"),
                      title: Text(
                        "Laptop LENOVO IDEAPAD 5 ",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "Processor : AMD Ryzen 5 5500U, Memory : 8GB DDR4, Storage : 512GB, SSD M.2 2242 PCIe 3.0×4 NVMe",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
