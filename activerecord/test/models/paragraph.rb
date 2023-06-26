# frozen_string_literal: true

require 'models/application_record'
class Paragraph < ApplicationRecord
  belongs_to :book
end
