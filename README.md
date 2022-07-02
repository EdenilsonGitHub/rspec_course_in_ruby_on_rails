# rspec_course_in_ruby_on_rails

########################### Elements ###########################
############ describe #############
# Used for define exemple groups, can input a string or class name.
###################################
############ context ##############
# Important element for define a tests group. Don't is required, but make more simple and readable.
###################################
############ it ###################
# Define an test case
###################################
############ expect ###############
# Verify if a condition is corretly how to did defined
################################################################

########################### Matchers ###########################
############ expect ###############
## if the valor is ==
# expect(actual).to eq(expected)
## if x.eql?(y)
# expect(x).to eql(y)
## if x.equal?(y)
# expect(x).to be(y)
###################################
############ comparation matchers #
## if valor is greater than x
# expect(actual).to be > x
## if valor is greater or equal to x
# expect(actual).to be >= x
## if valor is less than or equal to x
# expect(actual).to be <= x
## if valor is less than to x
# expect(actual).to be < x
## if want to use regular expression
# expect(actual).to match(/expression/)
####################################
############ class matchers/type ###
## if the object is an expected class instance
# expect(actual).to be_an_instance_of(expected)
## if object type is expected type
# expect(actual).to be_a(expected)
####################################
######## matchers true/false/nil ###
## ok while the valor isn't false or nil
# expect(actual).to be_truthy
## ok when the valor is true
# expect(actual).to be true
## ok while the valor is false or nil
# expect(actual).to be_falsy
## ok when the valor is false
# expect(actual).to be false
## ok if the valor is nil
# expect(actual).to be_nil
## ok if the valor isn't nil
# expect(actual).to_not be_nil
####################################
######## errors matchers ###########
## if it's get wrong
# expect { ... }.to raise_error
## if it's get wrong ErrorClass type
# expect { ... }.to raise_error(ErrorClass)
## if it's get wrong with message "message"
# expect { ... }.to raise_error("message")
## if it's get wrong with ErrorClass type with a message "message"
# expect { ... }.to raise_error(ErrorClass, "message")
####################################
################################################################