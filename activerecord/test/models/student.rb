# frozen_string_literal: true

require 'models/application_record'
class Student < ApplicationRecord
  has_and_belongs_to_many :lessons
  belongs_to :college
end
