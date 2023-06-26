# frozen_string_literal: true

module Sharded
require 'models/application_record'
  class Tag < ApplicationRecord
    self.table_name = :sharded_tags
    query_constraints :blog_id, :id

    has_many :blog_post_tags, query_constraints: [:blog_id, :tag_id]
    has_many :blog_posts, through: :blog_post_tags
  end
end
