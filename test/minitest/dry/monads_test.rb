# frozen_string_literal: true
require 'test_helper'
module Minitest
  module Dry
    class MonadsTest < Minitest::Test
      def test_that_it_has_a_version_number
        assert_equal Minitest::Dry::Monads::VERSION, '0.0.0'
      end
    end
  end
end
