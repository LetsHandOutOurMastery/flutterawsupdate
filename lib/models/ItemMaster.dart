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


/** This is an auto generated class representing the ItemMaster type in your schema. */
@immutable
class ItemMaster extends Model {
  static const classType = const _ItemMasterModelType();
  final String id;
  final String? _ItemID;
  final String? _Itm_Desc;
  final String? _Itm_ImagePath;
  final String? _Itm_category;
  final String? _Itm_Name;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get ItemID {
    return _ItemID;
  }
  
  String? get Itm_Desc {
    return _Itm_Desc;
  }
  
  String? get Itm_ImagePath {
    return _Itm_ImagePath;
  }
  
  String? get Itm_category {
    return _Itm_category;
  }
  
  String get Itm_Name {
    try {
      return _Itm_Name!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const ItemMaster._internal({required this.id, ItemID, Itm_Desc, Itm_ImagePath, Itm_category, required Itm_Name}): _ItemID = ItemID, _Itm_Desc = Itm_Desc, _Itm_ImagePath = Itm_ImagePath, _Itm_category = Itm_category, _Itm_Name = Itm_Name;
  
  factory ItemMaster({String? id, String? ItemID, String? Itm_Desc, String? Itm_ImagePath, String? Itm_category, required String Itm_Name}) {
    return ItemMaster._internal(
      id: id == null ? UUID.getUUID() : id,
      ItemID: ItemID,
      Itm_Desc: Itm_Desc,
      Itm_ImagePath: Itm_ImagePath,
      Itm_category: Itm_category,
      Itm_Name: Itm_Name);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemMaster &&
      id == other.id &&
      _ItemID == other._ItemID &&
      _Itm_Desc == other._Itm_Desc &&
      _Itm_ImagePath == other._Itm_ImagePath &&
      _Itm_category == other._Itm_category &&
      _Itm_Name == other._Itm_Name;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ItemMaster {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("ItemID=" + "$_ItemID" + ", ");
    buffer.write("Itm_Desc=" + "$_Itm_Desc" + ", ");
    buffer.write("Itm_ImagePath=" + "$_Itm_ImagePath" + ", ");
    buffer.write("Itm_category=" + "$_Itm_category" + ", ");
    buffer.write("Itm_Name=" + "$_Itm_Name");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ItemMaster copyWith({String? id, String? ItemID, String? Itm_Desc, String? Itm_ImagePath, String? Itm_category, String? Itm_Name}) {
    return ItemMaster(
      id: id ?? this.id,
      ItemID: ItemID ?? this.ItemID,
      Itm_Desc: Itm_Desc ?? this.Itm_Desc,
      Itm_ImagePath: Itm_ImagePath ?? this.Itm_ImagePath,
      Itm_category: Itm_category ?? this.Itm_category,
      Itm_Name: Itm_Name ?? this.Itm_Name);
  }
  
  ItemMaster.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _ItemID = json['ItemID'],
      _Itm_Desc = json['Itm_Desc'],
      _Itm_ImagePath = json['Itm_ImagePath'],
      _Itm_category = json['Itm_category'],
      _Itm_Name = json['Itm_Name'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'ItemID': _ItemID, 'Itm_Desc': _Itm_Desc, 'Itm_ImagePath': _Itm_ImagePath, 'Itm_category': _Itm_category, 'Itm_Name': _Itm_Name
  };

  static final QueryField ID = QueryField(fieldName: "itemMaster.id");
  static final QueryField ITEMID = QueryField(fieldName: "ItemID");
  static final QueryField ITM_DESC = QueryField(fieldName: "Itm_Desc");
  static final QueryField ITM_IMAGEPATH = QueryField(fieldName: "Itm_ImagePath");
  static final QueryField ITM_CATEGORY = QueryField(fieldName: "Itm_category");
  static final QueryField ITM_NAME = QueryField(fieldName: "Itm_Name");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ItemMaster";
    modelSchemaDefinition.pluralName = "ItemMasters";
    
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
      key: ItemMaster.ITEMID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ItemMaster.ITM_DESC,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ItemMaster.ITM_IMAGEPATH,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ItemMaster.ITM_CATEGORY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ItemMaster.ITM_NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _ItemMasterModelType extends ModelType<ItemMaster> {
  const _ItemMasterModelType();
  
  @override
  ItemMaster fromJson(Map<String, dynamic> jsonData) {
    return ItemMaster.fromJson(jsonData);
  }
}