mongoose = require 'mongoose'

class UserInteractor
    getById: (id, callback) ->
        User = mongoose.model 'User'
        User.findById id, 'id username displayName name', callback

module.exports = new UserInteractor()
