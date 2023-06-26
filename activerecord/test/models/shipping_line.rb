# frozen_string_literal: true

require 'models/application_record'
require 'models/application_record'
class ShippingLine < ApplicationRecord
  belongs_to :invoice, touch: true
  has_many :discount_applications, class_name: "ShippingLineDiscountApplication"
end

class ShippingLineDiscountApplication < ApplicationRecord
  belongs_to :shipping_line
  belongs_to :discount
end
