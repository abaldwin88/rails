# frozen_string_literal: true

require 'models/application_record'
class Cat < ApplicationRecord
  self.abstract_class = true

  enum gender: [:female, :male]

  default_scope -> { where(is_vegetarian: false) }
end

class Lion < Cat
end
