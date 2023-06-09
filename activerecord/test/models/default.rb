# frozen_string_literal: true

class Default < ActiveRecord::Base
  returning_on_create :rand_number_plus_two
end
