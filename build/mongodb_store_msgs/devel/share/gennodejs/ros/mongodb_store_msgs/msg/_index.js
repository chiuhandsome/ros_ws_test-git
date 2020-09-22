
"use strict";

let Insert = require('./Insert.js');
let StringPair = require('./StringPair.js');
let StringPairList = require('./StringPairList.js');
let SerialisedMessage = require('./SerialisedMessage.js');
let StringList = require('./StringList.js');
let MoveEntriesResult = require('./MoveEntriesResult.js');
let MoveEntriesFeedback = require('./MoveEntriesFeedback.js');
let MoveEntriesGoal = require('./MoveEntriesGoal.js');
let MoveEntriesActionGoal = require('./MoveEntriesActionGoal.js');
let MoveEntriesActionResult = require('./MoveEntriesActionResult.js');
let MoveEntriesActionFeedback = require('./MoveEntriesActionFeedback.js');
let MoveEntriesAction = require('./MoveEntriesAction.js');

module.exports = {
  Insert: Insert,
  StringPair: StringPair,
  StringPairList: StringPairList,
  SerialisedMessage: SerialisedMessage,
  StringList: StringList,
  MoveEntriesResult: MoveEntriesResult,
  MoveEntriesFeedback: MoveEntriesFeedback,
  MoveEntriesGoal: MoveEntriesGoal,
  MoveEntriesActionGoal: MoveEntriesActionGoal,
  MoveEntriesActionResult: MoveEntriesActionResult,
  MoveEntriesActionFeedback: MoveEntriesActionFeedback,
  MoveEntriesAction: MoveEntriesAction,
};
