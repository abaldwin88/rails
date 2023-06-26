# frozen_string_literal: true

require 'models/application_record'
class Wheel < ApplicationRecord
  belongs_to :wheelable, polymorphic: true, counter_cache: true, touch: :wheels_owned_at
end
