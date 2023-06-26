# frozen_string_literal: true

require 'models/application_record'
class WithoutTable < ApplicationRecord
  default_scope -> { where(published: true) }
end
