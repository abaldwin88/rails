# frozen_string_literal: true

require 'models/application_record'
class Subscriber < ApplicationRecord
  self.primary_key = "nick"
  has_many :subscriptions
  has_many :books, through: :subscriptions
end

class SpecialSubscriber < Subscriber
end
