# frozen_string_literal: true
require_relative 'monads/assertions'
require 'minitest/test'
module Minitest
  module Dry
    module Monads
      def self.setup_assertions!
        Minitest::Test.include(Assertions)
      end
    end
  end
end
