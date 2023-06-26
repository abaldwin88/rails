# frozen_string_literal: true

require 'models/application_record'
class Publisher::Article < ApplicationRecord
  has_and_belongs_to_many :magazines
  has_and_belongs_to_many :tags
end
