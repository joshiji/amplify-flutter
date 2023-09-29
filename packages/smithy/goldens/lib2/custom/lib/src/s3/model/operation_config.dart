// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.s3.model.operation_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/s3/model/s3_config.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'operation_config.g.dart';

/// Configuration that is set for the scope of a single operation.
abstract class OperationConfig
    with _i1.AWSEquatable<OperationConfig>
    implements Built<OperationConfig, OperationConfigBuilder> {
  /// Configuration that is set for the scope of a single operation.
  factory OperationConfig({S3Config? s3}) {
    return _$OperationConfig._(s3: s3);
  }

  /// Configuration that is set for the scope of a single operation.
  factory OperationConfig.build(
      [void Function(OperationConfigBuilder) updates]) = _$OperationConfig;

  const OperationConfig._();

  static const List<_i2.SmithySerializer<OperationConfig>> serializers = [
    OperationConfigRestXmlSerializer()
  ];

  /// Configuration specific to S3.
  S3Config? get s3;
  @override
  List<Object?> get props => [s3];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OperationConfig')
      ..add(
        's3',
        s3,
      );
    return helper.toString();
  }
}

class OperationConfigRestXmlSerializer
    extends _i2.StructuredSmithySerializer<OperationConfig> {
  const OperationConfigRestXmlSerializer() : super('OperationConfig');

  @override
  Iterable<Type> get types => const [
        OperationConfig,
        _$OperationConfig,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  OperationConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(S3Config),
          ) as S3Config));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OperationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OperationConfig',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final OperationConfig(:s3) = object;
    if (s3 != null) {
      result$
        ..add(const _i2.XmlElementName('s3'))
        ..add(serializers.serialize(
          s3,
          specifiedType: const FullType(S3Config),
        ));
    }
    return result$;
  }
}
