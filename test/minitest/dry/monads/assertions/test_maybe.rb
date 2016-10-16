# frozen_string_literal: true
require 'test_helper'
require 'dry-monads'
class TestMaybe
  include MiniTest::Dry::Monads::Assertions
  include Dry::Monads::Maybe::Mixin
  def setup
    @some = Some(1)
    @none = None
  end

  def test_assert_maybe
    assert_maybe Maybe(1)
    assert_maybe Maybe(nil)
    assert_maybe 2
  end

  # def test_assert_some
  # assert_some(Some(1))
  # end
end
