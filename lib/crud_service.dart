import 'package:cloud_firestore/cloud_firestore.dart';

class CrudService {
  final CollectionReference tasks = FirebaseFirestore.instance.collection(
    'tasks',
  );

  // CREATE
  Future<void> addTask(String title) async {
    await tasks.add({'title': title, 'createdAt': Timestamp.now()});
  }

  // READ
  Stream<QuerySnapshot> getTasks() {
    return tasks.orderBy('createdAt', descending: true).snapshots();
  }

  // UPDATE
  Future<void> updateTask(String id, String title) {
    return tasks.doc(id).update({'title': title});
  }

  // DELETE
  Future<void> deleteTask(String id) {
    return tasks.doc(id).delete();
  }
}
