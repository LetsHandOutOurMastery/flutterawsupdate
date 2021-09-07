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

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Warehouse type in your schema. */
@immutable
class Warehouse extends Model {
  static const classType = const _WarehouseModelType();
  final String id;
  final List<Employee>? _employees;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  List<Employee>? get employees {
    return _employees;
  }
  
  const Warehouse._internal({required this.id, employees}): _employees = employees;
  
  factory Warehouse({String? id, List<Employee>? employees}) {
    return Warehouse._internal(
      id: id == null ? UUID.getUUID() : id,
      employees: employees != null ? List<Employee>.unmodifiable(employees) : employees);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Warehouse &&
      id == other.id &&
      DeepCollectionEquality().equals(_employees, other._employees);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Warehouse {");
    buffer.write("id=" + "$id");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Warehouse copyWith({String? id, List<Employee>? employees}) {
    return Warehouse(
      id: id ?? this.id,
      employees: employees ?? this.employees);
  }
  
  Warehouse.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _employees = json['employees'] is List
        ? (json['employees'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Employee.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'employees': _employees?.map((e) => e?.toJson())?.toList()
  };

  static final QueryField ID = QueryField(fieldName: "warehouse.id");
  static final QueryField EMPLOYEES = QueryField(
    fieldName: "employees",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Employee).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Warehouse";
    modelSchemaDefinition.pluralName = "Warehouses";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Warehouse.EMPLOYEES,
      isRequired: false,
      ofModelName: (Employee).toString(),
      associatedKey: Employee.WAREHOUSEID
    ));
  });
}

class _WarehouseModelType extends ModelType<Warehouse> {
  const _WarehouseModelType();
  
  @override
  Warehouse fromJson(Map<String, dynamic> jsonData) {
    return Warehouse.fromJson(jsonData);
  }
}