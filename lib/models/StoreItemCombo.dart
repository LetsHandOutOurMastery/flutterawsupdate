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


/** This is an auto generated class representing the StoreItemCombo type in your schema. */
@immutable
class StoreItemCombo extends Model {
  static const classType = const _StoreItemComboModelType();
  final String id;
  final String? _Col1;
  final String? _Col2;
  final String? _Col3;
  final String? _Col4;
  final String? _Col5;
  final String? _Col6;
  final String? _Col7;
  final String? _Col8;
  final String? _Col9;
  final String? _Col10;
  final String? _Col11;
  final String? _Col12;
  final String? _Col13;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get Col1 {
    return _Col1;
  }
  
  String? get Col2 {
    return _Col2;
  }
  
  String? get Col3 {
    return _Col3;
  }
  
  String? get Col4 {
    return _Col4;
  }
  
  String? get Col5 {
    return _Col5;
  }
  
  String? get Col6 {
    return _Col6;
  }
  
  String? get Col7 {
    return _Col7;
  }
  
  String? get Col8 {
    return _Col8;
  }
  
  String? get Col9 {
    return _Col9;
  }
  
  String? get Col10 {
    return _Col10;
  }
  
  String? get Col11 {
    return _Col11;
  }
  
  String? get Col12 {
    return _Col12;
  }
  
  String? get Col13 {
    return _Col13;
  }
  
  const StoreItemCombo._internal({required this.id, Col1, Col2, Col3, Col4, Col5, Col6, Col7, Col8, Col9, Col10, Col11, Col12, Col13}): _Col1 = Col1, _Col2 = Col2, _Col3 = Col3, _Col4 = Col4, _Col5 = Col5, _Col6 = Col6, _Col7 = Col7, _Col8 = Col8, _Col9 = Col9, _Col10 = Col10, _Col11 = Col11, _Col12 = Col12, _Col13 = Col13;
  
  factory StoreItemCombo({String? id, String? Col1, String? Col2, String? Col3, String? Col4, String? Col5, String? Col6, String? Col7, String? Col8, String? Col9, String? Col10, String? Col11, String? Col12, String? Col13}) {
    return StoreItemCombo._internal(
      id: id == null ? UUID.getUUID() : id,
      Col1: Col1,
      Col2: Col2,
      Col3: Col3,
      Col4: Col4,
      Col5: Col5,
      Col6: Col6,
      Col7: Col7,
      Col8: Col8,
      Col9: Col9,
      Col10: Col10,
      Col11: Col11,
      Col12: Col12,
      Col13: Col13);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreItemCombo &&
      id == other.id &&
      _Col1 == other._Col1 &&
      _Col2 == other._Col2 &&
      _Col3 == other._Col3 &&
      _Col4 == other._Col4 &&
      _Col5 == other._Col5 &&
      _Col6 == other._Col6 &&
      _Col7 == other._Col7 &&
      _Col8 == other._Col8 &&
      _Col9 == other._Col9 &&
      _Col10 == other._Col10 &&
      _Col11 == other._Col11 &&
      _Col12 == other._Col12 &&
      _Col13 == other._Col13;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("StoreItemCombo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Col1=" + "$_Col1" + ", ");
    buffer.write("Col2=" + "$_Col2" + ", ");
    buffer.write("Col3=" + "$_Col3" + ", ");
    buffer.write("Col4=" + "$_Col4" + ", ");
    buffer.write("Col5=" + "$_Col5" + ", ");
    buffer.write("Col6=" + "$_Col6" + ", ");
    buffer.write("Col7=" + "$_Col7" + ", ");
    buffer.write("Col8=" + "$_Col8" + ", ");
    buffer.write("Col9=" + "$_Col9" + ", ");
    buffer.write("Col10=" + "$_Col10" + ", ");
    buffer.write("Col11=" + "$_Col11" + ", ");
    buffer.write("Col12=" + "$_Col12" + ", ");
    buffer.write("Col13=" + "$_Col13");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  StoreItemCombo copyWith({String? id, String? Col1, String? Col2, String? Col3, String? Col4, String? Col5, String? Col6, String? Col7, String? Col8, String? Col9, String? Col10, String? Col11, String? Col12, String? Col13}) {
    return StoreItemCombo(
      id: id ?? this.id,
      Col1: Col1 ?? this.Col1,
      Col2: Col2 ?? this.Col2,
      Col3: Col3 ?? this.Col3,
      Col4: Col4 ?? this.Col4,
      Col5: Col5 ?? this.Col5,
      Col6: Col6 ?? this.Col6,
      Col7: Col7 ?? this.Col7,
      Col8: Col8 ?? this.Col8,
      Col9: Col9 ?? this.Col9,
      Col10: Col10 ?? this.Col10,
      Col11: Col11 ?? this.Col11,
      Col12: Col12 ?? this.Col12,
      Col13: Col13 ?? this.Col13);
  }
  
  StoreItemCombo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Col1 = json['Col1'],
      _Col2 = json['Col2'],
      _Col3 = json['Col3'],
      _Col4 = json['Col4'],
      _Col5 = json['Col5'],
      _Col6 = json['Col6'],
      _Col7 = json['Col7'],
      _Col8 = json['Col8'],
      _Col9 = json['Col9'],
      _Col10 = json['Col10'],
      _Col11 = json['Col11'],
      _Col12 = json['Col12'],
      _Col13 = json['Col13'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Col1': _Col1, 'Col2': _Col2, 'Col3': _Col3, 'Col4': _Col4, 'Col5': _Col5, 'Col6': _Col6, 'Col7': _Col7, 'Col8': _Col8, 'Col9': _Col9, 'Col10': _Col10, 'Col11': _Col11, 'Col12': _Col12, 'Col13': _Col13
  };

  static final QueryField ID = QueryField(fieldName: "storeItemCombo.id");
  static final QueryField COL1 = QueryField(fieldName: "Col1");
  static final QueryField COL2 = QueryField(fieldName: "Col2");
  static final QueryField COL3 = QueryField(fieldName: "Col3");
  static final QueryField COL4 = QueryField(fieldName: "Col4");
  static final QueryField COL5 = QueryField(fieldName: "Col5");
  static final QueryField COL6 = QueryField(fieldName: "Col6");
  static final QueryField COL7 = QueryField(fieldName: "Col7");
  static final QueryField COL8 = QueryField(fieldName: "Col8");
  static final QueryField COL9 = QueryField(fieldName: "Col9");
  static final QueryField COL10 = QueryField(fieldName: "Col10");
  static final QueryField COL11 = QueryField(fieldName: "Col11");
  static final QueryField COL12 = QueryField(fieldName: "Col12");
  static final QueryField COL13 = QueryField(fieldName: "Col13");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "StoreItemCombo";
    modelSchemaDefinition.pluralName = "StoreItemCombos";
    
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
      key: StoreItemCombo.COL1,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL2,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL3,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL4,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL5,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL6,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL7,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL8,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL9,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL10,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL11,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL12,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreItemCombo.COL13,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _StoreItemComboModelType extends ModelType<StoreItemCombo> {
  const _StoreItemComboModelType();
  
  @override
  StoreItemCombo fromJson(Map<String, dynamic> jsonData) {
    return StoreItemCombo.fromJson(jsonData);
  }
}