# frozen_string_literal: true

require 'models/application_record'
class Subscription < ApplicationRecord
  belongs_to :subscriber, counter_cache: :books_count
  belongs_to :book, -> { author_visibility_visible }

  validates_presence_of :subscriber_id, :book_id
end
