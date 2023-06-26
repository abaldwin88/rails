# frozen_string_literal: true

require 'models/application_record'
class MixedCaseMonkey < ApplicationRecord
  belongs_to :human
end
