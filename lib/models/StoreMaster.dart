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


/** This is an auto generated class representing the StoreMaster type in your schema. */
@immutable
class StoreMaster extends Model {
  static const classType = const _StoreMasterModelType();
  final String id;
  final String? _StoreID;
  final String? _Sto_Addr;
  final String? _Sto_Phone;
  final String? _Sto_Type;
  final String? _Sto_Name;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get StoreID {
    return _StoreID;
  }
  
  String? get Sto_Addr {
    return _Sto_Addr;
  }
  
  String? get Sto_Phone {
    return _Sto_Phone;
  }
  
  String? get Sto_Type {
    return _Sto_Type;
  }
  
  String? get Sto_Name {
    return _Sto_Name;
  }
  
  const StoreMaster._internal({required this.id, StoreID, Sto_Addr, Sto_Phone, Sto_Type, Sto_Name}): _StoreID = StoreID, _Sto_Addr = Sto_Addr, _Sto_Phone = Sto_Phone, _Sto_Type = Sto_Type, _Sto_Name = Sto_Name;
  
  factory StoreMaster({String? id, String? StoreID, String? Sto_Addr, String? Sto_Phone, String? Sto_Type, String? Sto_Name}) {
    return StoreMaster._internal(
      id: id == null ? UUID.getUUID() : id,
      StoreID: StoreID,
      Sto_Addr: Sto_Addr,
      Sto_Phone: Sto_Phone,
      Sto_Type: Sto_Type,
      Sto_Name: Sto_Name);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreMaster &&
      id == other.id &&
      _StoreID == other._StoreID &&
      _Sto_Addr == other._Sto_Addr &&
      _Sto_Phone == other._Sto_Phone &&
      _Sto_Type == other._Sto_Type &&
      _Sto_Name == other._Sto_Name;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("StoreMaster {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("StoreID=" + "$_StoreID" + ", ");
    buffer.write("Sto_Addr=" + "$_Sto_Addr" + ", ");
    buffer.write("Sto_Phone=" + "$_Sto_Phone" + ", ");
    buffer.write("Sto_Type=" + "$_Sto_Type" + ", ");
    buffer.write("Sto_Name=" + "$_Sto_Name");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  StoreMaster copyWith({String? id, String? StoreID, String? Sto_Addr, String? Sto_Phone, String? Sto_Type, String? Sto_Name}) {
    return StoreMaster(
      id: id ?? this.id,
      StoreID: StoreID ?? this.StoreID,
      Sto_Addr: Sto_Addr ?? this.Sto_Addr,
      Sto_Phone: Sto_Phone ?? this.Sto_Phone,
      Sto_Type: Sto_Type ?? this.Sto_Type,
      Sto_Name: Sto_Name ?? this.Sto_Name);
  }
  
  StoreMaster.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _StoreID = json['StoreID'],
      _Sto_Addr = json['Sto_Addr'],
      _Sto_Phone = json['Sto_Phone'],
      _Sto_Type = json['Sto_Type'],
      _Sto_Name = json['Sto_Name'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'StoreID': _StoreID, 'Sto_Addr': _Sto_Addr, 'Sto_Phone': _Sto_Phone, 'Sto_Type': _Sto_Type, 'Sto_Name': _Sto_Name
  };

  static final QueryField ID = QueryField(fieldName: "storeMaster.id");
  static final QueryField STOREID = QueryField(fieldName: "StoreID");
  static final QueryField STO_ADDR = QueryField(fieldName: "Sto_Addr");
  static final QueryField STO_PHONE = QueryField(fieldName: "Sto_Phone");
  static final QueryField STO_TYPE = QueryField(fieldName: "Sto_Type");
  static final QueryField STO_NAME = QueryField(fieldName: "Sto_Name");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "StoreMaster";
    modelSchemaDefinition.pluralName = "StoreMasters";
    
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
      key: StoreMaster.STOREID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreMaster.STO_ADDR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreMaster.STO_PHONE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreMaster.STO_TYPE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: StoreMaster.STO_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _StoreMasterModelType extends ModelType<StoreMaster> {
  const _StoreMasterModelType();
  
  @override
  StoreMaster fromJson(Map<String, dynamic> jsonData) {
    return StoreMaster.fromJson(jsonData);
  }
}