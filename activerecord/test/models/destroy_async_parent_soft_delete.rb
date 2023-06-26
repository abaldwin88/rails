# frozen_string_literal: true

require 'models/application_record'
class DestroyAsyncParentSoftDelete < ApplicationRecord
  has_many :taggings, as: :taggable, class_name: "Tagging"
  has_many :tags, through: :taggings,
    dependent: :destroy_async,
    ensuring_owner_was: :deleted?

  has_one :dl_keyed_has_one, dependent: :destroy_async,
    ensuring_owner_was: :deleted?

  def deleted?
    deleted
  end

  def destroy
    update(deleted: true)
    run_callbacks(:destroy)
  end
end
