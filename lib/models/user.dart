import 'package:ecommerce/models/dod.dart';
import 'package:ecommerce/models/id.dart';
import 'package:ecommerce/models/location.dart';
import 'package:ecommerce/models/loging.dart';
import 'package:ecommerce/models/name.dart';
import 'package:ecommerce/models/picture.dart';
import 'package:ecommerce/models/registered.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  String gender;
  Name name;
  Location location;
  String email;
  Login login;
  Dob dob;
  Registered registered;
  String phone;
  String cell;
  Id id;
  Picture picture;
  String nat;

  User({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
