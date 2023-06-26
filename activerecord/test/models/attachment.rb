# frozen_string_literal: true

require 'models/application_record'
class Attachment < ApplicationRecord
  belongs_to :record, polymorphic: true

  has_one :translation
end
