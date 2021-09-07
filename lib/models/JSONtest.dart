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


/** This is an auto generated class representing the JSONtest type in your schema. */
@immutable
class JSONtest extends Model {
  static const classType = const _JSONtestModelType();
  final String id;
  final String? _USERdetails;
  final TemporalDate? _adddate;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get USERdetails {
    return _USERdetails;
  }
  
  TemporalDate? get adddate {
    return _adddate;
  }
  
  const JSONtest._internal({required this.id, USERdetails, adddate}): _USERdetails = USERdetails, _adddate = adddate;
  
  factory JSONtest({String? id, String? USERdetails, TemporalDate? adddate}) {
    return JSONtest._internal(
      id: id == null ? UUID.getUUID() : id,
      USERdetails: USERdetails,
      adddate: adddate);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JSONtest &&
      id == other.id &&
      _USERdetails == other._USERdetails &&
      _adddate == other._adddate;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("JSONtest {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("USERdetails=" + "$_USERdetails" + ", ");
    buffer.write("adddate=" + (_adddate != null ? _adddate!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  JSONtest copyWith({String? id, String? USERdetails, TemporalDate? adddate}) {
    return JSONtest(
      id: id ?? this.id,
      USERdetails: USERdetails ?? this.USERdetails,
      adddate: adddate ?? this.adddate);
  }
  
  JSONtest.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _USERdetails = json['USERdetails'],
      _adddate = json['adddate'] != null ? TemporalDate.fromString(json['adddate']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'USERdetails': _USERdetails, 'adddate': _adddate?.format()
  };

  static final QueryField ID = QueryField(fieldName: "jSONtest.id");
  static final QueryField USERDETAILS = QueryField(fieldName: "USERdetails");
  static final QueryField ADDDATE = QueryField(fieldName: "adddate");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "JSONtest";
    modelSchemaDefinition.pluralName = "JSONtests";
    
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
      key: JSONtest.USERDETAILS,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: JSONtest.ADDDATE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
  });
}

class _JSONtestModelType extends ModelType<JSONtest> {
  const _JSONtestModelType();
  
  @override
  JSONtest fromJson(Map<String, dynamic> jsonData) {
    return JSONtest.fromJson(jsonData);
  }
}