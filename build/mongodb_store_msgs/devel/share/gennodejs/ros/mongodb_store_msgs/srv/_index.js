
"use strict";

let MongoQuerywithProjectionMsg = require('./MongoQuerywithProjectionMsg.js')
let MongoQueryMsg = require('./MongoQueryMsg.js')
let MongoUpdateMsg = require('./MongoUpdateMsg.js')
let MongoInsertMsg = require('./MongoInsertMsg.js')
let MongoDeleteMsg = require('./MongoDeleteMsg.js')

module.exports = {
  MongoQuerywithProjectionMsg: MongoQuerywithProjectionMsg,
  MongoQueryMsg: MongoQueryMsg,
  MongoUpdateMsg: MongoUpdateMsg,
  MongoInsertMsg: MongoInsertMsg,
  MongoDeleteMsg: MongoDeleteMsg,
};
