import 'package:flutter/material.dart';
import 'db_helper.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> _expenses = [];
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  void _refresh() async {
    final data = await DBHelper.instance.getAll();
    setState(() => _expenses = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Week 4: Expense Tracker"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: "Title"),
                ),
                TextField(
                  controller: amountController,
                  decoration: InputDecoration(labelText: "Amount (GHS)"),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async {
                    if (titleController.text.isEmpty ||
                        amountController.text.isEmpty)
                      return;
                    await DBHelper.instance.insert({
                      'title': titleController.text,
                      'amount': double.parse(amountController.text),
                      'date': DateTime.now().toIso8601String(),
                    });
                    titleController.clear();
                    amountController.clear();
                    _refresh();
                  },
                  child: Text("Save Expense"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _expenses.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(_expenses[index]['title']),
                subtitle: Text("GHS ${_expenses[index]['amount']}"),
                trailing: IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () async {
                    await DBHelper.instance.delete(_expenses[index]['id']);
                    _refresh();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
