# frozen_string_literal: true

require 'models/application_record'
class AbstractItem < ApplicationRecord
  self.abstract_class = true
  has_one :tagging, as: :taggable
end

class Item < AbstractItem
end
