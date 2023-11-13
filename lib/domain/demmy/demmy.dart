import 'package:json_annotation/json_annotation.dart';

part 'demmy.g.dart';

@JsonSerializable()
class Demmy {
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'OrganizationName')
  String? organizationName;
  @JsonKey(name: 'Mobile')
  String? mobile;
  @JsonKey(name: 'CountryCode')
  int? countryCode;
  @JsonKey(name: 'Email')
  String? email;
  @JsonKey(name: 'Password')
  String? password;
  @JsonKey(name: 'Position')
  String? position;

  Demmy({
    this.name,
    this.organizationName,
    this.mobile,
    this.countryCode,
    this.email,
    this.password,
    this.position,
  });

  factory Demmy.fromJson(Map<String, dynamic> json) => _$DemmyFromJson(json);

  Map<String, dynamic> toJson() => _$DemmyToJson(this);
}
