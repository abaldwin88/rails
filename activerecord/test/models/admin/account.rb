# frozen_string_literal: true

require 'models/application_record'
class Admin::Account < ApplicationRecord
  has_many :users
end
