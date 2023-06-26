# frozen_string_literal: true

module Cpk
require 'models/application_record'
  class OrderTag < ApplicationRecord
    self.table_name = :cpk_order_tags

    belongs_to :tag
    belongs_to :order, primary_key: :id
  end
end
