# frozen_string_literal: true

require 'models/application_record'
class DlKeyedBelongsTo < ApplicationRecord
  self.primary_key = "belongs_key"
  belongs_to :destroy_async_parent,
    dependent: :destroy_async,
    foreign_key: :destroy_async_parent_id,
    primary_key: :parent_id,
    class_name: "DestroyAsyncParent"
  belongs_to :destroy_async_parent_soft_delete,
    dependent: :destroy_async,
    ensuring_owner_was: :deleted?, class_name: "DestroyAsyncParentSoftDelete"
end
