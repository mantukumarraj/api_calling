import 'package:flutter/material.dart';
import '../service/users_Model.dart';

class UserDetailScreen extends StatelessWidget {
  final UsersModel user;

  UserDetailScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text(
          'User Detail',
          style: TextStyle(color: Colors.white), // Set title text color to white
        ),
        iconTheme: IconThemeData(color: Colors.white), // Set back icon color to white
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          height: 200,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Id: ${user.id}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Name: ${user.name}', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Text('Email: ${user.email}', style: TextStyle(fontSize: 18)),
                  Text('Address: ${user.address}', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
