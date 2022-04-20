import 'package:firebase_auth/firebase_auth.dart' as firebase;

const List<String> superAdmins = [
  "bhushan@techverito.com",
  "admin@techverito.com",
  "harun@techverito.com"
];

class AppUser {
  final String fullName;
  final String email;
  final String uid;
  AppUser({
    this.fullName,
    this.email,
    this.uid,
  });

  bool get isAdmin {
    return !isNormalUser;
  }

  bool get isSuperAdmin {
    return superAdmins.contains(email);
  }

  bool get isNormalUser {
    return !email.contains('@techverito.com');
  }

  String get firstName {
    return fullName.split(' ')[0];
  }

  String get lastName {
    return fullName.split(' ')[1];
  }

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      fullName: json['fullName'],
      email: json['email'],
      uid: json['uid'],
    );
  }

  factory AppUser.fromFirebaseUser(firebase.User user) {
    return AppUser(
      fullName: user.displayName ?? "", // Null check
      email: user.email,
      uid: user.uid,
    );
  }
}
