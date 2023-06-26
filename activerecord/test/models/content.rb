# frozen_string_literal: true

require 'models/application_record'
class Content < ApplicationRecord
  self.table_name = "content"
  has_one :content_position, dependent: :destroy

  def self.destroyed_ids
    @destroyed_ids ||= []
  end

  before_destroy do |object|
    Content.destroyed_ids << object.id
  end
end

require 'models/application_record'
class ContentWhichRequiresTwoDestroyCalls < ApplicationRecord
  self.table_name = "content"
  has_one :content_position, foreign_key: "content_id", dependent: :destroy

  after_initialize do
    @destroy_count = 0
  end

  before_destroy do
    @destroy_count += 1
    if @destroy_count == 1
      throw :abort
    end
  end
end

require 'models/application_record'
class ContentPosition < ApplicationRecord
  belongs_to :content, dependent: :destroy

  def self.destroyed_ids
    @destroyed_ids ||= []
  end

  before_destroy do |object|
    ContentPosition.destroyed_ids << object.id
  end
end
