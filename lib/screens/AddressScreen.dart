import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  Database? _database;
  List<Map<String, dynamic>> addresses = [];
  int? selectedAddressId;

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    _database = await openDatabase(
      p.join(await getDatabasesPath(), 'addresses.db'),
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE addresses(id INTEGER PRIMARY KEY AUTOINCREMENT, address TEXT)');
      },
      version: 1,
    );
    _loadAddresses();
  }

  Future<void> _loadAddresses() async {
    if (_database == null) return;
    final List<Map<String, dynamic>> maps = await _database!.query('addresses');
    setState(() {
      addresses = maps;
    });
  }

  Future<void> _addAddress(String address) async {
    if (_database == null) return;
    await _database!.insert('addresses', {'address': address});
    _loadAddresses();
  }

  Future<void> _deleteAddress(int id) async {
    if (_database == null) return;
    await _database!.delete('addresses', where: 'id = ?', whereArgs: [id]);
    setState(() {
      if (selectedAddressId == id) {
        selectedAddressId = null;
      }
    });
    _loadAddresses();
  }

  Future<void> _editAddress(int id, String newAddress) async {
    if (_database == null) return;
    await _database!.update('addresses', {'address': newAddress},
        where: 'id = ?', whereArgs: [id]);
    _loadAddresses();
  }

  void _showAddressDialog({int? id}) {
    TextEditingController controller = TextEditingController(
      text: id != null
          ? addresses.firstWhere((addr) => addr['id'] == id)['address']
          : '',
    );
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(id == null ? 'Add Address' : 'Edit Address'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: 'Enter address'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  if (id == null) {
                    _addAddress(controller.text);
                  } else {
                    _editAddress(id, controller.text);
                  }
                  Navigator.pop(context);
                }
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Address'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _showAddressDialog(),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: addresses.length,
              itemBuilder: (context, index) {
                final address = addresses[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: ListTile(
                    leading: Radio<int>(
                      value: address['id'],
                      groupValue: selectedAddressId,
                      onChanged: (int? value) {
                        setState(() {
                          selectedAddressId = value;
                        });
                      },
                    ),
                    title: Text(address['address']),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit, color: Colors.blue),
                          onPressed: () =>
                              _showAddressDialog(id: address['id']),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteAddress(address['id']),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {}, // Implement account deletion logic here
            child: Text(
              'Delete my account',
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
