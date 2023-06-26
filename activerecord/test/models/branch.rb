# frozen_string_literal: true

require 'models/application_record'
class Branch < ApplicationRecord
  has_many :branches
  belongs_to :branch, optional: true
end

class BrokenBranch < Branch
  has_many :branches, class_name: "BrokenBranch", foreign_key: :branch_id
  belongs_to :branch, optional: true, inverse_of: :branch, class_name: "BrokenBranch"
end
