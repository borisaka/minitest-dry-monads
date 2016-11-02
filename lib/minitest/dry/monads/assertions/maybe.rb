# frozen_string_literal: true
require 'dry-monads'
module Minitest
  module Dry
    module Monads
      module Assertions
        module Maybe
          # Maybe
          # assert_maybe M.Some(4)
          # or assert_some M.Some(5)
          # or assert_some_('Success!') { some_calculation }
          def assert_maybe(obj, msg = nil)
            assert_kind_of(::Dry::Monads::Maybe, obj, msg)
            assert true
          end

          def assert_some(obj, msg = nil)
            assert_instance_of(::Dry::Monads::Maybe::Some, obj, msg)
          end

          def assert_some_(value, msg = nil)
            assert_equal(yield, ::Dry::Monads::Some(value), msg)
          end

          def assert_none(obj, msg = nil)
            assert_same(Dry::Monads::None(), obj, msg)
          end

          def refute_maybe(obj, msg = nil)
            refute_kind_of(Dry::Monads::Maybe, obj, msg)
          end

          def refute_some(obj, msg = nil)
            refute_instance_of(Dry::Monads::Some, obj, msg)
          end

          def refute_some_(obj, value, msg = nil)
            refute_equal(obj, M.Some(value), msg)
          end

          def refute_none(obj, msg = nil)
            refute_same(Dry::Monads::None(), obj, msg)
          end
      end
    end
    end
  end
end
