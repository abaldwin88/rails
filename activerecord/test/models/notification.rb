# frozen_string_literal: true

require 'models/application_record'
class Notification < ApplicationRecord
  validates_presence_of :message
end
