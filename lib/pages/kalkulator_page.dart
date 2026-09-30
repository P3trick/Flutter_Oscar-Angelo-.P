import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: Column(
        children: [

          Text(
            "KALKULATOR",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(hintText: "input Angka 1"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(hintText: "input Angka 2"),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {},child: Text("+"),),
              ElevatedButton(onPressed: () {},child: Text("-"),),
              ElevatedButton(onPressed: () {},child: Text("×"),),
              ElevatedButton(onPressed: () {},child: Text("÷"),),
            ],
          ),

          Text("Hasil : ", style: TextStyle(fontSize: 20, color: Colors.green),),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red), //untuk warna background button
            onPressed: () {}, child: Text("Reset", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),),
        ],
      ),
    );
  }
}