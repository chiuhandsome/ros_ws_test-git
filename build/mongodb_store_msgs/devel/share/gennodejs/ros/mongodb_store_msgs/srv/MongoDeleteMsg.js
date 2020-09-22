// Auto-generated. Do not edit!

// (in-package mongodb_store_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MongoDeleteMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.database = null;
      this.collection = null;
      this.document_id = null;
    }
    else {
      if (initObj.hasOwnProperty('database')) {
        this.database = initObj.database
      }
      else {
        this.database = '';
      }
      if (initObj.hasOwnProperty('collection')) {
        this.collection = initObj.collection
      }
      else {
        this.collection = '';
      }
      if (initObj.hasOwnProperty('document_id')) {
        this.document_id = initObj.document_id
      }
      else {
        this.document_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MongoDeleteMsgRequest
    // Serialize message field [database]
    bufferOffset = _serializer.string(obj.database, buffer, bufferOffset);
    // Serialize message field [collection]
    bufferOffset = _serializer.string(obj.collection, buffer, bufferOffset);
    // Serialize message field [document_id]
    bufferOffset = _serializer.string(obj.document_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MongoDeleteMsgRequest
    let len;
    let data = new MongoDeleteMsgRequest(null);
    // Deserialize message field [database]
    data.database = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collection]
    data.collection = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [document_id]
    data.document_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.database.length;
    length += object.collection.length;
    length += object.document_id.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store_msgs/MongoDeleteMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8db26da88c264ed1aced8ce3427e0db0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string database
    string collection
    string document_id 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MongoDeleteMsgRequest(null);
    if (msg.database !== undefined) {
      resolved.database = msg.database;
    }
    else {
      resolved.database = ''
    }

    if (msg.collection !== undefined) {
      resolved.collection = msg.collection;
    }
    else {
      resolved.collection = ''
    }

    if (msg.document_id !== undefined) {
      resolved.document_id = msg.document_id;
    }
    else {
      resolved.document_id = ''
    }

    return resolved;
    }
};

class MongoDeleteMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MongoDeleteMsgResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MongoDeleteMsgResponse
    let len;
    let data = new MongoDeleteMsgResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store_msgs/MongoDeleteMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MongoDeleteMsgResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MongoDeleteMsgRequest,
  Response: MongoDeleteMsgResponse,
  md5sum() { return '539ecd40e2a1f10c047a4c404ebe139f'; },
  datatype() { return 'mongodb_store_msgs/MongoDeleteMsg'; }
};
