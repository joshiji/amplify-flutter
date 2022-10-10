// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.greeting_struct; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'greeting_struct.g.dart';

abstract class GreetingStruct
    with _i1.HttpInput<GreetingStruct>, _i2.AWSEquatable<GreetingStruct>
    implements Built<GreetingStruct, GreetingStructBuilder> {
  factory GreetingStruct({String? hi}) {
    return _$GreetingStruct._(hi: hi);
  }

  factory GreetingStruct.build([void Function(GreetingStructBuilder) updates]) =
      _$GreetingStruct;

  const GreetingStruct._();

  factory GreetingStruct.fromRequest(
    GreetingStruct payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [GreetingStruct] from a [payload] and [response].
  factory GreetingStruct.fromResponse(
    GreetingStruct payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GreetingStructRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GreetingStructBuilder b) {}
  String? get hi;
  @override
  GreetingStruct getPayload() => this;
  @override
  List<Object?> get props => [hi];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingStruct');
    helper.add(
      'hi',
      hi,
    );
    return helper.toString();
  }
}

class GreetingStructRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructRestJson1Serializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [
        GreetingStruct,
        _$GreetingStruct,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'hi':
          if (value != null) {
            result.hi = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as GreetingStruct);
    final result = <Object?>[];
    if (payload.hi != null) {
      result
        ..add('hi')
        ..add(serializers.serialize(
          payload.hi!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
