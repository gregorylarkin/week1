require "test/unit"

#######################################################
#
# Your code starts on line 14.
#
# To run the tests from your command line:
#
# ruby week1.rb
#
#######################################################

def say_hello
    return "Hi!"
end

def shout(input)
    return input.upcase
end

def secret_code(input)
    if input.length > 5
        input2 = input.slice(0,1).downcase + input.slice(1,1).upcase + input.slice(2..-1).downcase
        return input2.reverse
    else
        return input.capitalize.reverse.swapcase
    end
end



# DO NOT CHANGE THE CODE BELOW THIS LINE.
#
class Homework < Test::Unit::TestCase

  def test_say_hello
    result = say_hello
    assert_equal "Hi!", result, "Change the 'say_hello' method so that it returns the string 'Hi!'"
  end

  def test_shout
    assert_equal "HOWDY", shout("howdy")
    assert_equal "GO U NU", shout("go u nu")
  end

  def test_secret_code
    assert_equal "YDWOh", secret_code("howdy")
    assert_equal "un u Og", secret_code("go u nu")
  end
end
