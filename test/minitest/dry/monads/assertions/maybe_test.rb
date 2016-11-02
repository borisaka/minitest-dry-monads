# frozen_string_literal: true
require 'test_helper'
class TestMaybe < Minitest::Test
  include Dry::Monads::Maybe::Mixin

  # if assertion should fail, but it successfull
  def refute_assertion(&assert_block)
    assert_raises(Minitest::Assertion, &assert_block)
  end

  # collection of many
  # def couple_of_wild

  def test_assert_maybe
    assert_maybe Maybe(1) # Some(1) kind_of Maybe
    assert_maybe Maybe(nil) # None() not_kind_of Maybe
    refute_assertion { assert_maybe 1 } # not monadic
    # raise 'ttr'
  end

  def test_assert_some
    assert_some Some(1) # Some(1) instance_of Some
    refute_assertion { assert_some None() } # None() not_instance_of Some
    refute_assertion { assert_some 1 } # not monadic
  end

  def test_assert_some_
    assert_some_(1) { Some(1) }
    refute_assertion { assert_some_(2) { Some(1) } } # Some(2) not_equal Some(1)
  end
end
