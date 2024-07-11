import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_models.g.dart';

@JsonSerializable()
class HomeModels {
  final String? message;
  final List<HomeData> data;
  final bool? status;
  final int? code;

  HomeModels(this.message, this.data, this.status, this.code);

  factory HomeModels.fromJson(Map<String, dynamic> json) =>
      _$HomeModelsFromJson(json);
}

@JsonSerializable()
class HomeData {
  final int? id;
  final String? name;
  final List<DoctorData> doctors;

  HomeData(this.id, this.name, this.doctors);

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}

@JsonSerializable()
class DoctorData {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? photo;
  final String? gender;
  final String? address;
  final String? description;
  final String? degree;
  final Specialization? specialization;
  final CityDoctor? city;
  @JsonKey(name: 'appoint_price')
  final int? appointPrice;
  @JsonKey(name: 'start_time')
  final String? startTime;
  @JsonKey(name: 'end_time')
  final String? endTime;

  DoctorData(
      this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime);

  factory DoctorData.fromJson(Map<String, dynamic> json) =>
      _$DoctorDataFromJson(json);
}

@JsonSerializable()
class Specialization {
  final int? id;
  final String? name;

  Specialization(this.id, this.name);

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
class CityDoctor {
  final int? id;
  final String? name;
  final GovernrateCity? governrate;
  CityDoctor(this.id, this.name, this.governrate);

  factory CityDoctor.fromJson(Map<String, dynamic> json) =>
      _$CityDoctorFromJson(json);
}

@JsonSerializable()
class GovernrateCity {
  final int? id;
  final String? name;

  GovernrateCity(this.id, this.name);

  factory GovernrateCity.fromJson(Map<String, dynamic> json) =>
      _$GovernrateCityFromJson(json);
}
