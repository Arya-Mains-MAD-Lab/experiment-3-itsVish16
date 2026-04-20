import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
 return const MaterialApp(
 home: Calculator(),
 );
 }
}
class Calculator extends StatefulWidget {
 const Calculator({super.key});
 @override
 State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
 final a = TextEditingController();
 final b = TextEditingController();
 int result = 0;
 @override
 void dispose() {
 a.dispose();
 b.dispose();
 super.dispose();
 }
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: const Text("Calculator")),
 body: Padding(
 padding: const EdgeInsets.all(16.0),
 child: Column(
 children: [
 TextField(
 controller: a,
 keyboardType: TextInputType.number,
 decoration: const InputDecoration(labelText: "Enter First Number"),
 ),
 TextField(
 controller: b,
 keyboardType: TextInputType.number,
 decoration: const InputDecoration(labelText: "Enter Second Number"),
 ),
 const SizedBox(height: 20),
 ElevatedButton(
 onPressed: () {
 setState(() {
 result = int.parse(a.text) + int.parse(b.text);
 });
 },
 child: const Text("Add"),
 ),
 const SizedBox(height: 20),
 Text("Result: $result"),
 ],
 ),
 ),
 );
 }
}
