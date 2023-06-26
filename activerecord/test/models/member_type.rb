# frozen_string_literal: true

require 'models/application_record'
class MemberType < ApplicationRecord
  has_many :members
end
