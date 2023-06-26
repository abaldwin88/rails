# frozen_string_literal: true

module Cpk
require 'models/application_record'
  class Review < ApplicationRecord
    self.table_name = :cpk_reviews

    belongs_to :book, class_name: "Cpk::Book", query_constraints: [:author_id, :number]
  end
end
