import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetPetList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final examples = FirebaseFirestore.instance.collection('examples');

    return StreamBuilder<QuerySnapshot>(
      stream: examples.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading');
        }

        return ListView(
          children: snapshot.data.docs.map((document) {
            return ListTile(
              title: Text(document.data()['title'] as String),
              subtitle: Text(document.data()['subtitle'] as String),
            );
          }).toList(),
        );
      },
    );
  }
}