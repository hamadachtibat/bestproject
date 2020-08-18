import 'package:cloud_firestore/cloud_firestore.dart';
 class Crudmethods {

   Future<void> Aaddata(lessondata) async {
     Firestore.instance.collection("lessons").add(lessondata).catchError((e) {
       print('error');
     });
   }

   Future<void> Aaddata1(lessondata) async {
     Firestore.instance.collection("lessons1activite")
         .add(lessondata)
         .catchError((e) {
       print('error');
     });
   }

   Future<void> Aaddata1arabe(lessondata) async {
     Firestore.instance.collection("lessons1arabe").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata1eduis(lessondata) async {
     Firestore.instance.collection("lessons1eduis").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata1eduar(lessondata) async {
     Firestore.instance.collection("lessons1eduar").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata1fr(lessondata) async {
     Firestore.instance.collection("lessons1fr").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata2ma(lessondata) async {
     Firestore.instance.collection("lessons2ma").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata2ac(lessondata) async {
     Firestore.instance.collection("lessons2ac").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata2ar(lessondata) async {
     Firestore.instance.collection("lessons2ar").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata2ei(lessondata) async {
     Firestore.instance.collection("lessons2ei").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata2ea(lessondata) async {
     Firestore.instance.collection("lessons2ea").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
   Future<void> Aaddata2fr(lessondata) async {
     Firestore.instance.collection("lessons2fr").add(lessondata).catchError((
         e) {
       print('error');
     });
   }
 }