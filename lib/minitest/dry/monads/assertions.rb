# frozen_string_literal: true
require 'assertioons/maybe'
require 'assertioons/either'
module Minitest
  module Dry
    module Monads
      # Assertions for dry-rb monads
      module Assertions
        M = ::Dry::Monads
        include Maybe
        include Either
      end
    end
  end
end
