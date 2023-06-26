# frozen_string_literal: true

require "models/destroy_async_parent_soft_delete"

require 'models/application_record'
class DlKeyedBelongsToSoftDelete < ApplicationRecord
  belongs_to :destroy_async_parent_soft_delete,
    dependent: :destroy_async,
    ensuring_owner_was: :deleted?,
    class_name: "DestroyAsyncParentSoftDelete"

  def deleted?
    deleted
  end

  def destroy
    update(deleted: true)
    run_callbacks(:destroy)
  end
end
