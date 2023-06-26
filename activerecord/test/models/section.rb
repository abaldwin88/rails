# frozen_string_literal: true

require 'models/application_record'
class Section < ApplicationRecord
  belongs_to :session, inverse_of: :sections, autosave: true
  belongs_to :seminar, inverse_of: :sections, autosave: true
end
