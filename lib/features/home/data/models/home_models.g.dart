// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModels _$HomeModelsFromJson(Map<String, dynamic> json) => HomeModels(
      json['message'] as String?,
      (json['data'] as List<dynamic>)
          .map((e) => HomeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['status'] as bool?,
      (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HomeModelsToJson(HomeModels instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };

HomeData _$HomeDataFromJson(Map<String, dynamic> json) => HomeData(
      json['id'] as String?,
      json['name'] as String?,
      (json['doctors'] as List<dynamic>)
          .map((e) => DoctorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };

DoctorData _$DoctorDataFromJson(Map<String, dynamic> json) => DoctorData(
      json['_id'] as String?,
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['photo'] as String?,
      json['gender'] as String?,
      json['address'] as String?,
      json['description'] as String?,
      json['degree'] as String?,
      json['specialization'] == null
          ? null
          : Specialization.fromJson(
              json['specialization'] as Map<String, dynamic>),
      json['city'] == null
          ? null
          : CityDoctor.fromJson(json['city'] as Map<String, dynamic>),
      (json['appoint_price'] as num?)?.toInt(),
      json['start_time'] as String?,
      json['end_time'] as String?,
    );

Map<String, dynamic> _$DoctorDataToJson(DoctorData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'specialization': instance.specialization,
      'city': instance.city,
      'appoint_price': instance.appointPrice,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      json['_id'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };

CityDoctor _$CityDoctorFromJson(Map<String, dynamic> json) => CityDoctor(
      json['_id'] as String?,
      json['name'] as String?,
      json['governrate'] == null
          ? null
          : GovernrateCity.fromJson(json['governrate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityDoctorToJson(CityDoctor instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'governrate': instance.governrate,
    };

GovernrateCity _$GovernrateCityFromJson(Map<String, dynamic> json) =>
    GovernrateCity(
      json['_id'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$GovernrateCityToJson(GovernrateCity instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
