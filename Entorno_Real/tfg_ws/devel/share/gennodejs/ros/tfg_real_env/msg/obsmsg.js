// Auto-generated. Do not edit!

// (in-package tfg_real_env.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class obsmsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ball_x = null;
      this.ball_y = null;
      this.ball_v_x = null;
      this.ball_v_y = null;
      this.agent_x = null;
      this.agent_y = null;
      this.agent_theta_x = null;
      this.agent_theta_y = null;
      this.agent_v_x = null;
      this.agent_v_y = null;
      this.agent_v_theta = null;
      this.rival_x = null;
      this.rival_y = null;
      this.rival_v_x = null;
      this.rival_v_y = null;
      this.rival_v_theta = null;
    }
    else {
      if (initObj.hasOwnProperty('ball_x')) {
        this.ball_x = initObj.ball_x
      }
      else {
        this.ball_x = 0.0;
      }
      if (initObj.hasOwnProperty('ball_y')) {
        this.ball_y = initObj.ball_y
      }
      else {
        this.ball_y = 0.0;
      }
      if (initObj.hasOwnProperty('ball_v_x')) {
        this.ball_v_x = initObj.ball_v_x
      }
      else {
        this.ball_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('ball_v_y')) {
        this.ball_v_y = initObj.ball_v_y
      }
      else {
        this.ball_v_y = 0.0;
      }
      if (initObj.hasOwnProperty('agent_x')) {
        this.agent_x = initObj.agent_x
      }
      else {
        this.agent_x = 0.0;
      }
      if (initObj.hasOwnProperty('agent_y')) {
        this.agent_y = initObj.agent_y
      }
      else {
        this.agent_y = 0.0;
      }
      if (initObj.hasOwnProperty('agent_theta_x')) {
        this.agent_theta_x = initObj.agent_theta_x
      }
      else {
        this.agent_theta_x = 0.0;
      }
      if (initObj.hasOwnProperty('agent_theta_y')) {
        this.agent_theta_y = initObj.agent_theta_y
      }
      else {
        this.agent_theta_y = 0.0;
      }
      if (initObj.hasOwnProperty('agent_v_x')) {
        this.agent_v_x = initObj.agent_v_x
      }
      else {
        this.agent_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('agent_v_y')) {
        this.agent_v_y = initObj.agent_v_y
      }
      else {
        this.agent_v_y = 0.0;
      }
      if (initObj.hasOwnProperty('agent_v_theta')) {
        this.agent_v_theta = initObj.agent_v_theta
      }
      else {
        this.agent_v_theta = 0.0;
      }
      if (initObj.hasOwnProperty('rival_x')) {
        this.rival_x = initObj.rival_x
      }
      else {
        this.rival_x = 0.0;
      }
      if (initObj.hasOwnProperty('rival_y')) {
        this.rival_y = initObj.rival_y
      }
      else {
        this.rival_y = 0.0;
      }
      if (initObj.hasOwnProperty('rival_v_x')) {
        this.rival_v_x = initObj.rival_v_x
      }
      else {
        this.rival_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('rival_v_y')) {
        this.rival_v_y = initObj.rival_v_y
      }
      else {
        this.rival_v_y = 0.0;
      }
      if (initObj.hasOwnProperty('rival_v_theta')) {
        this.rival_v_theta = initObj.rival_v_theta
      }
      else {
        this.rival_v_theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type obsmsg
    // Serialize message field [ball_x]
    bufferOffset = _serializer.float32(obj.ball_x, buffer, bufferOffset);
    // Serialize message field [ball_y]
    bufferOffset = _serializer.float32(obj.ball_y, buffer, bufferOffset);
    // Serialize message field [ball_v_x]
    bufferOffset = _serializer.float32(obj.ball_v_x, buffer, bufferOffset);
    // Serialize message field [ball_v_y]
    bufferOffset = _serializer.float32(obj.ball_v_y, buffer, bufferOffset);
    // Serialize message field [agent_x]
    bufferOffset = _serializer.float32(obj.agent_x, buffer, bufferOffset);
    // Serialize message field [agent_y]
    bufferOffset = _serializer.float32(obj.agent_y, buffer, bufferOffset);
    // Serialize message field [agent_theta_x]
    bufferOffset = _serializer.float32(obj.agent_theta_x, buffer, bufferOffset);
    // Serialize message field [agent_theta_y]
    bufferOffset = _serializer.float32(obj.agent_theta_y, buffer, bufferOffset);
    // Serialize message field [agent_v_x]
    bufferOffset = _serializer.float32(obj.agent_v_x, buffer, bufferOffset);
    // Serialize message field [agent_v_y]
    bufferOffset = _serializer.float32(obj.agent_v_y, buffer, bufferOffset);
    // Serialize message field [agent_v_theta]
    bufferOffset = _serializer.float32(obj.agent_v_theta, buffer, bufferOffset);
    // Serialize message field [rival_x]
    bufferOffset = _serializer.float32(obj.rival_x, buffer, bufferOffset);
    // Serialize message field [rival_y]
    bufferOffset = _serializer.float32(obj.rival_y, buffer, bufferOffset);
    // Serialize message field [rival_v_x]
    bufferOffset = _serializer.float32(obj.rival_v_x, buffer, bufferOffset);
    // Serialize message field [rival_v_y]
    bufferOffset = _serializer.float32(obj.rival_v_y, buffer, bufferOffset);
    // Serialize message field [rival_v_theta]
    bufferOffset = _serializer.float32(obj.rival_v_theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type obsmsg
    let len;
    let data = new obsmsg(null);
    // Deserialize message field [ball_x]
    data.ball_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ball_y]
    data.ball_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ball_v_x]
    data.ball_v_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ball_v_y]
    data.ball_v_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agent_x]
    data.agent_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agent_y]
    data.agent_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agent_theta_x]
    data.agent_theta_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agent_theta_y]
    data.agent_theta_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agent_v_x]
    data.agent_v_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agent_v_y]
    data.agent_v_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [agent_v_theta]
    data.agent_v_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rival_x]
    data.rival_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rival_y]
    data.rival_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rival_v_x]
    data.rival_v_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rival_v_y]
    data.rival_v_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rival_v_theta]
    data.rival_v_theta = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tfg_real_env/obsmsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13d67f0b2acaa52762a3605ec7346fdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ball_x
    float32 ball_y
    float32 ball_v_x
    float32 ball_v_y
    float32 agent_x
    float32 agent_y
    float32 agent_theta_x
    float32 agent_theta_y
    float32 agent_v_x
    float32 agent_v_y
    float32 agent_v_theta
    float32 rival_x
    float32 rival_y
    float32 rival_v_x
    float32 rival_v_y
    float32 rival_v_theta
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new obsmsg(null);
    if (msg.ball_x !== undefined) {
      resolved.ball_x = msg.ball_x;
    }
    else {
      resolved.ball_x = 0.0
    }

    if (msg.ball_y !== undefined) {
      resolved.ball_y = msg.ball_y;
    }
    else {
      resolved.ball_y = 0.0
    }

    if (msg.ball_v_x !== undefined) {
      resolved.ball_v_x = msg.ball_v_x;
    }
    else {
      resolved.ball_v_x = 0.0
    }

    if (msg.ball_v_y !== undefined) {
      resolved.ball_v_y = msg.ball_v_y;
    }
    else {
      resolved.ball_v_y = 0.0
    }

    if (msg.agent_x !== undefined) {
      resolved.agent_x = msg.agent_x;
    }
    else {
      resolved.agent_x = 0.0
    }

    if (msg.agent_y !== undefined) {
      resolved.agent_y = msg.agent_y;
    }
    else {
      resolved.agent_y = 0.0
    }

    if (msg.agent_theta_x !== undefined) {
      resolved.agent_theta_x = msg.agent_theta_x;
    }
    else {
      resolved.agent_theta_x = 0.0
    }

    if (msg.agent_theta_y !== undefined) {
      resolved.agent_theta_y = msg.agent_theta_y;
    }
    else {
      resolved.agent_theta_y = 0.0
    }

    if (msg.agent_v_x !== undefined) {
      resolved.agent_v_x = msg.agent_v_x;
    }
    else {
      resolved.agent_v_x = 0.0
    }

    if (msg.agent_v_y !== undefined) {
      resolved.agent_v_y = msg.agent_v_y;
    }
    else {
      resolved.agent_v_y = 0.0
    }

    if (msg.agent_v_theta !== undefined) {
      resolved.agent_v_theta = msg.agent_v_theta;
    }
    else {
      resolved.agent_v_theta = 0.0
    }

    if (msg.rival_x !== undefined) {
      resolved.rival_x = msg.rival_x;
    }
    else {
      resolved.rival_x = 0.0
    }

    if (msg.rival_y !== undefined) {
      resolved.rival_y = msg.rival_y;
    }
    else {
      resolved.rival_y = 0.0
    }

    if (msg.rival_v_x !== undefined) {
      resolved.rival_v_x = msg.rival_v_x;
    }
    else {
      resolved.rival_v_x = 0.0
    }

    if (msg.rival_v_y !== undefined) {
      resolved.rival_v_y = msg.rival_v_y;
    }
    else {
      resolved.rival_v_y = 0.0
    }

    if (msg.rival_v_theta !== undefined) {
      resolved.rival_v_theta = msg.rival_v_theta;
    }
    else {
      resolved.rival_v_theta = 0.0
    }

    return resolved;
    }
};

module.exports = obsmsg;
