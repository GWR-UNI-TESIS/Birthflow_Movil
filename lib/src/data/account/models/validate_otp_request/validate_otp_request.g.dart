// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateOtpRequestImpl _$$ValidateOtpRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateOtpRequestImpl(
      userId: json['userId'] as String,
      otpCode: json['otpCode'] as String,
    );

Map<String, dynamic> _$$ValidateOtpRequestImplToJson(
        _$ValidateOtpRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'otpCode': instance.otpCode,
    };
