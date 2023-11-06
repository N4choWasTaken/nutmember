import 'dart:math';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nutmember/resources/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required Uint8List file,
    
  }) async {
    String res = "Some error occurred";
    try {
      if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty || file != null) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);

        String imagePath = await StorageMethods().uploadImageToStorage(file);
        
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'username': username,
          'uid': cred.user!.uid,
          'email': email,
          'groups': [],
          'friends': [],
          'imagePath': imagePath
        });
        res = 'Success';
      }
    } catch(err) {
      res = err.toString();
    }
    return res;
  } 
}