import 'package:cloud_firestore/cloud_firestore.dart';

class TaskModel {
  final String id;
  final String title;
  final Timestamp? createdAt;

  TaskModel({required this.id, required this.title, this.createdAt});

  factory TaskModel.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    return TaskModel(
      id: doc.id,
      title: data?['title'] ?? '',
      createdAt: data?['createdAt'] as Timestamp?,
    );
  }
}
