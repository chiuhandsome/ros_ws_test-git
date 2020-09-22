// Auto-generated. Do not edit!

// (in-package mongodb_store_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StringPairList = require('../msg/StringPairList.js');
let SerialisedMessage = require('../msg/SerialisedMessage.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MongoUpdateMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.database = null;
      this.collection = null;
      this.upsert = null;
      this.message_query = null;
      this.meta_query = null;
      this.message = null;
      this.meta = null;
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
      if (initObj.hasOwnProperty('upsert')) {
        this.upsert = initObj.upsert
      }
      else {
        this.upsert = false;
      }
      if (initObj.hasOwnProperty('message_query')) {
        this.message_query = initObj.message_query
      }
      else {
        this.message_query = new StringPairList();
      }
      if (initObj.hasOwnProperty('meta_query')) {
        this.meta_query = initObj.meta_query
      }
      else {
        this.meta_query = new StringPairList();
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = new SerialisedMessage();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new StringPairList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MongoUpdateMsgRequest
    // Serialize message field [database]
    bufferOffset = _serializer.string(obj.database, buffer, bufferOffset);
    // Serialize message field [collection]
    bufferOffset = _serializer.string(obj.collection, buffer, bufferOffset);
    // Serialize message field [upsert]
    bufferOffset = _serializer.bool(obj.upsert, buffer, bufferOffset);
    // Serialize message field [message_query]
    bufferOffset = StringPairList.serialize(obj.message_query, buffer, bufferOffset);
    // Serialize message field [meta_query]
    bufferOffset = StringPairList.serialize(obj.meta_query, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = SerialisedMessage.serialize(obj.message, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = StringPairList.serialize(obj.meta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MongoUpdateMsgRequest
    let len;
    let data = new MongoUpdateMsgRequest(null);
    // Deserialize message field [database]
    data.database = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collection]
    data.collection = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [upsert]
    data.upsert = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message_query]
    data.message_query = StringPairList.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta_query]
    data.meta_query = StringPairList.deserialize(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = SerialisedMessage.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = StringPairList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.database.length;
    length += object.collection.length;
    length += StringPairList.getMessageSize(object.message_query);
    length += StringPairList.getMessageSize(object.meta_query);
    length += SerialisedMessage.getMessageSize(object.message);
    length += StringPairList.getMessageSize(object.meta);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store_msgs/MongoUpdateMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d87a90aa8c3d8f4cf31305f10951711';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # message used for updating matching ROS msgs from a MongoDB database
    
    string database
    string collection
    # insert if no matching message found
    bool upsert
    # key/values to be turned into a query doc on message content
    StringPairList message_query
    # key/values to be turned into a query doc on meta content
    StringPairList meta_query
    # the message to be inserted
    SerialisedMessage message
    # meta description to be added to message, if empty leave meta unchanged, if upsert true and empty, use meta_query
    StringPairList meta
    
    ================================================================================
    MSG: mongodb_store_msgs/StringPairList
    StringPair[] pairs
    
    ================================================================================
    MSG: mongodb_store_msgs/StringPair
    string first
    string second
    
    ================================================================================
    MSG: mongodb_store_msgs/SerialisedMessage
    # type to of the serialised message
    string type
    # the serialised message
    uint8[] msg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MongoUpdateMsgRequest(null);
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

    if (msg.upsert !== undefined) {
      resolved.upsert = msg.upsert;
    }
    else {
      resolved.upsert = false
    }

    if (msg.message_query !== undefined) {
      resolved.message_query = StringPairList.Resolve(msg.message_query)
    }
    else {
      resolved.message_query = new StringPairList()
    }

    if (msg.meta_query !== undefined) {
      resolved.meta_query = StringPairList.Resolve(msg.meta_query)
    }
    else {
      resolved.meta_query = new StringPairList()
    }

    if (msg.message !== undefined) {
      resolved.message = SerialisedMessage.Resolve(msg.message)
    }
    else {
      resolved.message = new SerialisedMessage()
    }

    if (msg.meta !== undefined) {
      resolved.meta = StringPairList.Resolve(msg.meta)
    }
    else {
      resolved.meta = new StringPairList()
    }

    return resolved;
    }
};

class MongoUpdateMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MongoUpdateMsgResponse
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MongoUpdateMsgResponse
    let len;
    let data = new MongoUpdateMsgResponse(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store_msgs/MongoUpdateMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb98d6e8d810388b13fa8e5a365eec6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # id of the updated msg
    string id
    # true if the database was changed
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MongoUpdateMsgResponse(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

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
  Request: MongoUpdateMsgRequest,
  Response: MongoUpdateMsgResponse,
  md5sum() { return 'c9a34b8e3509040b39c21bb4f3c2ca95'; },
  datatype() { return 'mongodb_store_msgs/MongoUpdateMsg'; }
};
