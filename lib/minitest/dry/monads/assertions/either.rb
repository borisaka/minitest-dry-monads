# frozen_string_literal: true
module Minitest::Dry::Monads::Assertions
  # assert_either M.Left(4)
  # or assert_right M.Right
  # or assert_right_('Success!') { some_calculation }
  # or refute_left_('Success!') { some_calculation }
  module Either
    def assert_either(obj, msg = nil)
      assert_kind_of(Dry::Monads::Either, obj, msg)
    end

    def assert_right(obj, msg = nil)
      assert_instance_of(Dry::Monads::Either::Right, obj, msg)
    end

    def assert_right_(value, msg = nil)
      assert_equal(yield, M.Right(value), msg)
    end

    def assert_left(obj, msg = nil)
      assert_instance_of(Dry::Monads::Either::Left, obj, msg)
    end

    def assert_left_(value, msg = nil)
      assert_equal(yield, M.Left(value), msg)
    end

    def refute_either(obj)
      refute_kind_of(Dry::Monads::Either, obj)
    end

    def refute_right(obj, msg = nil)
      refute_kind_of(Dry::Monads::Either::Right, obj, msg)
    end

    def refute_right_(value, msg = nil)
      refute_equal(yield, M.Right(value), msg)
    end

    def refute_left(obj, msg = nil)
      refute_kind_of(Dry::Monads::Either::Left, obj, msg)
    end

    def refute_left_(value, msg = nil)
      refute_equal(yield, M.Right(value), msg)
    end
  end
end
