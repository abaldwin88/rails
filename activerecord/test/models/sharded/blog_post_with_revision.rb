# frozen_string_literal: true

module Sharded
  # copy of the original `BlogPost` class, but with a different `query_constraints`
require 'models/application_record'
  class BlogPostWithRevision < ApplicationRecord
    self.table_name = :sharded_blog_posts
    query_constraints :blog_id, :revision, :id

    has_many :comments, primary_key: [:blog_id, :id], query_constraints: [:blog_id, :blog_post_id]
  end
end
