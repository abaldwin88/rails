# frozen_string_literal: true

require 'models/application_record'
class LineItem < ApplicationRecord
  belongs_to :invoice, touch: true
  has_many :discount_applications, class_name: "LineItemDiscountApplication"
end

require 'models/application_record'
class LineItemDiscountApplication < ApplicationRecord
  belongs_to :line_item
  belongs_to :discount
end
