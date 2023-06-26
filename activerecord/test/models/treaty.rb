# frozen_string_literal: true

require 'models/application_record'
class Treaty < ApplicationRecord
  has_and_belongs_to_many :countries
end
