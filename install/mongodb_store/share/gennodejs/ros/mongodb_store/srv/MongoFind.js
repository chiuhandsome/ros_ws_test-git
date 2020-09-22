// Auto-generated. Do not edit!

// (in-package mongodb_store.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MongoFindRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.db = null;
      this.collection = null;
      this.query = null;
    }
    else {
      if (initObj.hasOwnProperty('db')) {
        this.db = initObj.db
      }
      else {
        this.db = '';
      }
      if (initObj.hasOwnProperty('collection')) {
        this.collection = initObj.collection
      }
      else {
        this.collection = '';
      }
      if (initObj.hasOwnProperty('query')) {
        this.query = initObj.query
      }
      else {
        this.query = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MongoFindRequest
    // Serialize message field [db]
    bufferOffset = _serializer.string(obj.db, buffer, bufferOffset);
    // Serialize message field [collection]
    bufferOffset = _serializer.string(obj.collection, buffer, bufferOffset);
    // Serialize message field [query]
    bufferOffset = _serializer.string(obj.query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MongoFindRequest
    let len;
    let data = new MongoFindRequest(null);
    // Deserialize message field [db]
    data.db = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collection]
    data.collection = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [query]
    data.query = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.db.length;
    length += object.collection.length;
    length += object.query.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store/MongoFindRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfbcacecc78c9fa4f520fc6e13cbb788';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string db
    string collection
    string query
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MongoFindRequest(null);
    if (msg.db !== undefined) {
      resolved.db = msg.db;
    }
    else {
      resolved.db = ''
    }

    if (msg.collection !== undefined) {
      resolved.collection = msg.collection;
    }
    else {
      resolved.collection = ''
    }

    if (msg.query !== undefined) {
      resolved.query = msg.query;
    }
    else {
      resolved.query = ''
    }

    return resolved;
    }
};

class MongoFindResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MongoFindResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MongoFindResponse
    let len;
    let data = new MongoFindResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store/MongoFindResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MongoFindResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MongoFindRequest,
  Response: MongoFindResponse,
  md5sum() { return 'af526ebd8fc8f237d912cdce0c13e918'; },
  datatype() { return 'mongodb_store/MongoFind'; }
};
