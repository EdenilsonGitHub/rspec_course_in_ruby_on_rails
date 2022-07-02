]== rspec_course_in_ruby_on_rails

=== 1. Elements

1. describe
    Used for define exemple groups, can input a string or class name.
2. context
    Important element for define a tests group. Don't is required, but make more simple and readable.
3. it
    Define an test case
4. expect
    Verify if a condition is correctly how to did defined

=== 2. Matchers

1. expect
    1. if the valor is ==
        expect(actual).to eq(expected)
    2. if x.eql?(y)
        expect(x).to eql(y)
    3. if x.equal?(y)
        expect(x).to be(y)

2. comparation matchers
    1. if valor is greater than x
        expect(actual).to be > x
    2. if valor is greater or equal to x
        expect(actual).to be >= x
    3. if valor is less than or equal to x
        expect(actual).to be <= x
    4. if valor is less than to x
        expect(actual).to be < x
    5. if want to use regular expression
        expect(actual).to match(/expression/)

3. Class matchers/type
    1. if the object is an expected class instance
        expect(actual).to be_an_instance_of(expected)
    2. if object type is expected type
        expect(actual).to be_a(expected)

4. Matchers true/false/nil
    1. ok while the valor isn't false or nil
        expect(actual).to be_truthy
    2. ok when the valor is true
        expect(actual).to be true
    3. ok while the valor is false or nil
        expect(actual).to be_falsy
    4. ok when the valor is false
        expect(actual).to be false
    5. ok if the valor is nil
        expect(actual).to be_nil
    6. ok if the valor isn't nil
        expect(actual).to_not be_nil

5. Errors matchers
    1. if it's get wrong
        expect { ... }.to raise_error
    2. if it's get wrong ErrorClass type
        expect { ... }.to raise_error(ErrorClass)
    3. if it's get wrong with message "message"
        expect { ... }.to raise_error("message")
    4. if it's get wrong with ErrorClass type with a message "message"
        expect { ... }.to raise_error(ErrorClass, "message")
