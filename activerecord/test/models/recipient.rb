# frozen_string_literal: true

require 'models/application_record'
class Recipient < ApplicationRecord
  belongs_to :message, touch: true
end
