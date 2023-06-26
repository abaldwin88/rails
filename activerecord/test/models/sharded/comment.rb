# frozen_string_literal: true

module Sharded
require 'models/application_record'
  class Comment < ApplicationRecord
    self.table_name = :sharded_comments
    query_constraints :blog_id, :id

    belongs_to :blog_post, query_constraints: [:blog_id, :blog_post_id]
    belongs_to :blog_post_by_id, class_name: "Sharded::BlogPost", foreign_key: :blog_post_id
    belongs_to :blog
  end
end
