# Build your comprehensive validation function here!
# Feel free to use any third party librarys from NPM (http://npmjs.org) for data validation.
validator = require('validator');

typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is '[object Array]'

exports.validate = (data) ->

	if !validator.isInt(data.id + '', {min: 0}) then return false

	if !validator.isLength(data.name + '', {min:3, max: 63}) then return false

	if !validator.isEmail(data.email) then return false

	if !validator.isLength(data.email + '', {max: 255}) then return false

	if !validator.isDecimal(data.taxRate + '') then return false

	if !validator.isHexColor(data.favouriteColour) then return false

	if !typeIsArray data.interests then return false

	return true
