// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demmy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Demmy _$DemmyFromJson(Map<String, dynamic> json) => Demmy(
      name: json['Name'] as String?,
      organizationName: json['OrganizationName'] as String?,
      mobile: json['Mobile'] as String?,
      countryCode: json['CountryCode'] as int?,
      email: json['Email'] as String?,
      password: json['Password'] as String?,
      position: json['Position'] as String?,
    );

Map<String, dynamic> _$DemmyToJson(Demmy instance) => <String, dynamic>{
      'Name': instance.name,
      'OrganizationName': instance.organizationName,
      'Mobile': instance.mobile,
      'CountryCode': instance.countryCode,
      'Email': instance.email,
      'Password': instance.password,
      'Position': instance.position,
    };
