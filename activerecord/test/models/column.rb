# frozen_string_literal: true

require 'models/application_record'
class Column < ApplicationRecord
  belongs_to :record
end
