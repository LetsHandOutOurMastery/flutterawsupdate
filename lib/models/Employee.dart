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


/** This is an auto generated class representing the Employee type in your schema. */
@immutable
class Employee extends Model {
  static const classType = const _EmployeeModelType();
  final String id;
  final String? _name;
  final String? _startDate;
  final String? _phoneNumber;
  final String? _warehouseID;
  final String? _jobTitle;
  final String? _newHire;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get startDate {
    try {
      return _startDate!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get phoneNumber {
    try {
      return _phoneNumber!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get warehouseID {
    try {
      return _warehouseID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get jobTitle {
    try {
      return _jobTitle!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get newHire {
    try {
      return _newHire!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Employee._internal({required this.id, required name, required startDate, required phoneNumber, required warehouseID, required jobTitle, required newHire}): _name = name, _startDate = startDate, _phoneNumber = phoneNumber, _warehouseID = warehouseID, _jobTitle = jobTitle, _newHire = newHire;
  
  factory Employee({String? id, required String name, required String startDate, required String phoneNumber, required String warehouseID, required String jobTitle, required String newHire}) {
    return Employee._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      startDate: startDate,
      phoneNumber: phoneNumber,
      warehouseID: warehouseID,
      jobTitle: jobTitle,
      newHire: newHire);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Employee &&
      id == other.id &&
      _name == other._name &&
      _startDate == other._startDate &&
      _phoneNumber == other._phoneNumber &&
      _warehouseID == other._warehouseID &&
      _jobTitle == other._jobTitle &&
      _newHire == other._newHire;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Employee {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("startDate=" + "$_startDate" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("warehouseID=" + "$_warehouseID" + ", ");
    buffer.write("jobTitle=" + "$_jobTitle" + ", ");
    buffer.write("newHire=" + "$_newHire");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Employee copyWith({String? id, String? name, String? startDate, String? phoneNumber, String? warehouseID, String? jobTitle, String? newHire}) {
    return Employee(
      id: id ?? this.id,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      warehouseID: warehouseID ?? this.warehouseID,
      jobTitle: jobTitle ?? this.jobTitle,
      newHire: newHire ?? this.newHire);
  }
  
  Employee.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _startDate = json['startDate'],
      _phoneNumber = json['phoneNumber'],
      _warehouseID = json['warehouseID'],
      _jobTitle = json['jobTitle'],
      _newHire = json['newHire'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'startDate': _startDate, 'phoneNumber': _phoneNumber, 'warehouseID': _warehouseID, 'jobTitle': _jobTitle, 'newHire': _newHire
  };

  static final QueryField ID = QueryField(fieldName: "employee.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField STARTDATE = QueryField(fieldName: "startDate");
  static final QueryField PHONENUMBER = QueryField(fieldName: "phoneNumber");
  static final QueryField WAREHOUSEID = QueryField(fieldName: "warehouseID");
  static final QueryField JOBTITLE = QueryField(fieldName: "jobTitle");
  static final QueryField NEWHIRE = QueryField(fieldName: "newHire");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Employee";
    modelSchemaDefinition.pluralName = "Employees";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Employee.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Employee.STARTDATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Employee.PHONENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Employee.WAREHOUSEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Employee.JOBTITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Employee.NEWHIRE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _EmployeeModelType extends ModelType<Employee> {
  const _EmployeeModelType();
  
  @override
  Employee fromJson(Map<String, dynamic> jsonData) {
    return Employee.fromJson(jsonData);
  }
}