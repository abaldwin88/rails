# frozen_string_literal: true

require 'models/application_record'
class FamilyTree < ApplicationRecord
  belongs_to :member, class_name: "User", foreign_key: "member_id"
  belongs_to :family
end
