const mongoose = require('mongoose')

const eventSchema = new mongoose.Schema({
  event_name: {
    type: String
  },
  location: {
    type: String
  },
  date: {
    type: String
  },
  info: {
    type: String
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('EventEntry', eventSchema)
