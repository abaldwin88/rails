# frozen_string_literal: true

module Cpk
require 'models/application_record'
  class Author < ApplicationRecord
    self.table_name = :cpk_authors

    has_many :books, class_name: "Cpk::Book", dependent: :delete_all
  end
end
