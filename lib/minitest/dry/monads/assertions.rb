# frozen_string_literal: true
require 'dry-monads'
require_relative 'assertions/maybe'
require_relative 'assertions/either'
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
