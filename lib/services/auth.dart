import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mi_peluqueriapp/screens/sign_in/sign_in_screen.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
    idToken: googleSignInAuthentication.idToken,
    accessToken: googleSignInAuthentication.accessToken,
  );

  final UserCredential authResult = await _auth.signInWithCredential(credential);
  final User user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final User currentUser = _auth.currentUser;
  assert(currentUser.uid == user.uid);

  return user;
}

void signUpWithEmail({email: String, password: String}) async {
  UserCredential user;
  try {
    user = await _auth.createUserWithEmailAndPassword(email: null, password: null);
  } catch (e) {
    print(e.toString());
  } finally {
    if (user != null) {
      // Sign in sucessfull
    } else {
      // Sign in unsucessfull
    }
  }
}

void signInWithEmail({email: String, password: String}) async {
  UserCredential user;
  try {
    user = await _auth.signInWithEmailAndPassword(email: null, password: null);
  } catch (e) {
    print(e.toString());
  } finally {
    if (user != null) {
      // Sign in sucessfull
    } else {
      // Sign in unsucessfull
    }
  }
}

Future<User> getUser() async {
  return _auth.currentUser;
}

void signOutGoogle() async {
  await googleSignIn.signOut();
}

void signOutAndToHome(BuildContext context) {
  signOutGoogle();
  Navigator.of(context).pushNamed(SignInScreen.routeName);
}
