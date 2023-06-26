# frozen_string_literal: true

require 'models/application_record'
class Entrant < ApplicationRecord
  belongs_to :course
end
