
"use strict";

let SetParam = require('./SetParam.js')
let MongoInsert = require('./MongoInsert.js')
let GetParam = require('./GetParam.js')
let MongoFind = require('./MongoFind.js')
let MongoUpdate = require('./MongoUpdate.js')

module.exports = {
  SetParam: SetParam,
  MongoInsert: MongoInsert,
  GetParam: GetParam,
  MongoFind: MongoFind,
  MongoUpdate: MongoUpdate,
};
