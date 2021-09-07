/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the IDIncrementation type in your schema. */
@immutable
class IDIncrementation extends Model {
  static const classType = const _IDIncrementationModelType();
  final String id;
  final String? _IDType;
  final String? _IDNumber;
  final String? _IDTypeInt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get IDType {
    return _IDType;
  }
  
  String? get IDNumber {
    return _IDNumber;
  }
  
  String? get IDTypeInt {
    return _IDTypeInt;
  }
  
  const IDIncrementation._internal({required this.id, IDType, IDNumber, IDTypeInt}): _IDType = IDType, _IDNumber = IDNumber, _IDTypeInt = IDTypeInt;
  
  factory IDIncrementation({String? id, String? IDType, String? IDNumber, String? IDTypeInt}) {
    return IDIncrementation._internal(
      id: id == null ? UUID.getUUID() : id,
      IDType: IDType,
      IDNumber: IDNumber,
      IDTypeInt: IDTypeInt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IDIncrementation &&
      id == other.id &&
      _IDType == other._IDType &&
      _IDNumber == other._IDNumber &&
      _IDTypeInt == other._IDTypeInt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("IDIncrementation {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("IDType=" + "$_IDType" + ", ");
    buffer.write("IDNumber=" + "$_IDNumber" + ", ");
    buffer.write("IDTypeInt=" + "$_IDTypeInt");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  IDIncrementation copyWith({String? id, String? IDType, String? IDNumber, String? IDTypeInt}) {
    return IDIncrementation(
      id: id ?? this.id,
      IDType: IDType ?? this.IDType,
      IDNumber: IDNumber ?? this.IDNumber,
      IDTypeInt: IDTypeInt ?? this.IDTypeInt);
  }
  
  IDIncrementation.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _IDType = json['IDType'],
      _IDNumber = json['IDNumber'],
      _IDTypeInt = json['IDTypeInt'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'IDType': _IDType, 'IDNumber': _IDNumber, 'IDTypeInt': _IDTypeInt
  };

  static final QueryField ID = QueryField(fieldName: "iDIncrementation.id");
  static final QueryField IDTYPE = QueryField(fieldName: "IDType");
  static final QueryField IDNUMBER = QueryField(fieldName: "IDNumber");
  static final QueryField IDTYPEINT = QueryField(fieldName: "IDTypeInt");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "IDIncrementation";
    modelSchemaDefinition.pluralName = "IDIncrementations";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: IDIncrementation.IDTYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: IDIncrementation.IDNUMBER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: IDIncrementation.IDTYPEINT,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _IDIncrementationModelType extends ModelType<IDIncrementation> {
  const _IDIncrementationModelType();
  
  @override
  IDIncrementation fromJson(Map<String, dynamic> jsonData) {
    return IDIncrementation.fromJson(jsonData);
  }
}