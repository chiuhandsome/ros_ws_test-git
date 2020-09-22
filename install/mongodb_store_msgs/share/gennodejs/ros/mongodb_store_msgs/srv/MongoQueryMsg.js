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

//-----------------------------------------------------------

let SerialisedMessage = require('../msg/SerialisedMessage.js');

//-----------------------------------------------------------

class MongoQueryMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.database = null;
      this.collection = null;
      this.type = null;
      this.single = null;
      this.limit = null;
      this.message_query = null;
      this.meta_query = null;
      this.sort_query = null;
      this.projection_query = null;
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
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('single')) {
        this.single = initObj.single
      }
      else {
        this.single = false;
      }
      if (initObj.hasOwnProperty('limit')) {
        this.limit = initObj.limit
      }
      else {
        this.limit = 0;
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
      if (initObj.hasOwnProperty('sort_query')) {
        this.sort_query = initObj.sort_query
      }
      else {
        this.sort_query = new StringPairList();
      }
      if (initObj.hasOwnProperty('projection_query')) {
        this.projection_query = initObj.projection_query
      }
      else {
        this.projection_query = new StringPairList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MongoQueryMsgRequest
    // Serialize message field [database]
    bufferOffset = _serializer.string(obj.database, buffer, bufferOffset);
    // Serialize message field [collection]
    bufferOffset = _serializer.string(obj.collection, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [single]
    bufferOffset = _serializer.bool(obj.single, buffer, bufferOffset);
    // Serialize message field [limit]
    bufferOffset = _serializer.uint16(obj.limit, buffer, bufferOffset);
    // Serialize message field [message_query]
    bufferOffset = StringPairList.serialize(obj.message_query, buffer, bufferOffset);
    // Serialize message field [meta_query]
    bufferOffset = StringPairList.serialize(obj.meta_query, buffer, bufferOffset);
    // Serialize message field [sort_query]
    bufferOffset = StringPairList.serialize(obj.sort_query, buffer, bufferOffset);
    // Serialize message field [projection_query]
    bufferOffset = StringPairList.serialize(obj.projection_query, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MongoQueryMsgRequest
    let len;
    let data = new MongoQueryMsgRequest(null);
    // Deserialize message field [database]
    data.database = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [collection]
    data.collection = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [single]
    data.single = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [limit]
    data.limit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [message_query]
    data.message_query = StringPairList.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta_query]
    data.meta_query = StringPairList.deserialize(buffer, bufferOffset);
    // Deserialize message field [sort_query]
    data.sort_query = StringPairList.deserialize(buffer, bufferOffset);
    // Deserialize message field [projection_query]
    data.projection_query = StringPairList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.database.length;
    length += object.collection.length;
    length += object.type.length;
    length += StringPairList.getMessageSize(object.message_query);
    length += StringPairList.getMessageSize(object.meta_query);
    length += StringPairList.getMessageSize(object.sort_query);
    length += StringPairList.getMessageSize(object.projection_query);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store_msgs/MongoQueryMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3dce95387658eb89ce25e603efe525cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # message used for querying for ids of matching ROS msgs from a MongoDB database
    
    # constant passed as key in query to indicate the value should be treated as a query string (assuming that is possible...)
    string JSON_QUERY="jnsdfskajd_fmgs.dlf"
    
    string database
    string collection
    # type to deserialise into
    string type
    # whether you're only looking for a single 
    bool single
    # how much messages you want. limit=0 is equivalent to setting no limit.
    uint16 limit
    # key/values to be turned into a query doc on message content
    StringPairList message_query
    # key/values to be turned into a query doc on meta content
    StringPairList meta_query
    # key/values to be turned into a sort query
    StringPairList sort_query
    # key/values to be turned into a projection query
    StringPairList projection_query
    
    ================================================================================
    MSG: mongodb_store_msgs/StringPairList
    StringPair[] pairs
    
    ================================================================================
    MSG: mongodb_store_msgs/StringPair
    string first
    string second
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MongoQueryMsgRequest(null);
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

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.single !== undefined) {
      resolved.single = msg.single;
    }
    else {
      resolved.single = false
    }

    if (msg.limit !== undefined) {
      resolved.limit = msg.limit;
    }
    else {
      resolved.limit = 0
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

    if (msg.sort_query !== undefined) {
      resolved.sort_query = StringPairList.Resolve(msg.sort_query)
    }
    else {
      resolved.sort_query = new StringPairList()
    }

    if (msg.projection_query !== undefined) {
      resolved.projection_query = StringPairList.Resolve(msg.projection_query)
    }
    else {
      resolved.projection_query = new StringPairList()
    }

    return resolved;
    }
};

// Constants for message
MongoQueryMsgRequest.Constants = {
  JSON_QUERY: '"jnsdfskajd_fmgs.dlf"',
}

class MongoQueryMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.messages = null;
      this.metas = null;
    }
    else {
      if (initObj.hasOwnProperty('messages')) {
        this.messages = initObj.messages
      }
      else {
        this.messages = [];
      }
      if (initObj.hasOwnProperty('metas')) {
        this.metas = initObj.metas
      }
      else {
        this.metas = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MongoQueryMsgResponse
    // Serialize message field [messages]
    // Serialize the length for message field [messages]
    bufferOffset = _serializer.uint32(obj.messages.length, buffer, bufferOffset);
    obj.messages.forEach((val) => {
      bufferOffset = SerialisedMessage.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [metas]
    // Serialize the length for message field [metas]
    bufferOffset = _serializer.uint32(obj.metas.length, buffer, bufferOffset);
    obj.metas.forEach((val) => {
      bufferOffset = StringPairList.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MongoQueryMsgResponse
    let len;
    let data = new MongoQueryMsgResponse(null);
    // Deserialize message field [messages]
    // Deserialize array length for message field [messages]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.messages = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.messages[i] = SerialisedMessage.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [metas]
    // Deserialize array length for message field [metas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.metas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.metas[i] = StringPairList.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.messages.forEach((val) => {
      length += SerialisedMessage.getMessageSize(val);
    });
    object.metas.forEach((val) => {
      length += StringPairList.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mongodb_store_msgs/MongoQueryMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f348d453c2d7347807f66360b61cd0ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # messages which match the query
    SerialisedMessage[] messages
    StringPairList[] metas
    
    
    ================================================================================
    MSG: mongodb_store_msgs/SerialisedMessage
    # type to of the serialised message
    string type
    # the serialised message
    uint8[] msg
    ================================================================================
    MSG: mongodb_store_msgs/StringPairList
    StringPair[] pairs
    
    ================================================================================
    MSG: mongodb_store_msgs/StringPair
    string first
    string second
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MongoQueryMsgResponse(null);
    if (msg.messages !== undefined) {
      resolved.messages = new Array(msg.messages.length);
      for (let i = 0; i < resolved.messages.length; ++i) {
        resolved.messages[i] = SerialisedMessage.Resolve(msg.messages[i]);
      }
    }
    else {
      resolved.messages = []
    }

    if (msg.metas !== undefined) {
      resolved.metas = new Array(msg.metas.length);
      for (let i = 0; i < resolved.metas.length; ++i) {
        resolved.metas[i] = StringPairList.Resolve(msg.metas[i]);
      }
    }
    else {
      resolved.metas = []
    }

    return resolved;
    }
};

module.exports = {
  Request: MongoQueryMsgRequest,
  Response: MongoQueryMsgResponse,
  md5sum() { return '45d9c9b353113ab0888f363d63903883'; },
  datatype() { return 'mongodb_store_msgs/MongoQueryMsg'; }
};
