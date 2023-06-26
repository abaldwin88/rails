# frozen_string_literal: true

require 'models/application_record'
class Frog < ApplicationRecord
  after_save do
    with_lock do
    end
  end
end
