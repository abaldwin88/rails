# frozen_string_literal: true

require 'models/application_record'
class ShopAccount < ApplicationRecord
  belongs_to :customer
  belongs_to :customer_carrier

  has_one :carrier, through: :customer_carrier
end
