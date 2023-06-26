# frozen_string_literal: true

require 'models/application_record'
class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true, foreign_key: :imageable_identifier, foreign_type: :imageable_class
end
