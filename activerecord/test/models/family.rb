# frozen_string_literal: true

require 'models/application_record'
class Family < ApplicationRecord
  has_many :family_trees, -> { where(token: nil) }
  has_many :members, through: :family_trees
end
