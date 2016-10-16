# frozen_string_literal: true
# assert_try M.Try { 5 / 0 }
# or assert_success
# or assert_right_('Success!') { some_calculation }
# or refute_left_('Success!') { some_calculation }
module Minitest::Dry::Monads::Assertions::Try
  def assert_try(obj, msg = nil)
    assert_kind_of(Dry::Monads::Try, obj, msg)
  end

  def assert_success(obj, msg = nil)
    assert_instance_of(Dry::Monads::Try::Success, obj, msg)
  end

  def assert_success_(value, msg = nil)
    assert_equal(yield, M.Success(value), msg)
  end

  def assert_failure(obj, msg = nil)
    assert_instance_of(Dry::Monads::Try::Failure, obj, msg)
  end

  def assert_failure_(value, msg = nil)
    assert_equal(yield, M.Try(*value), msg)
  end

  def refute_try(obj)
    refute_kind_of(Dry::Monads::Try, obj)
  end

  def refute_success(obj, msg = nil)
    refute_kind_of(Dry::Monads::Try::Success, obj, msg)
  end

  def refute_success_(value, msg = nil)
    refute_equal(yield, M.Success(*value), msg)
  end

  def refute_failure(obj, msg = nil)
    refute_kind_of(Dry::Monads::Try::Failure, obj, msg)
  end

  def refute_failure_(value, msg = nil)
    refute_equal(yield, M.Failure(*value), msg)
  end
end
