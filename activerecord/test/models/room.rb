# frozen_string_literal: true

require 'models/application_record'
class Room < ApplicationRecord
  belongs_to :user
  belongs_to :owner, class_name: "User"
end
