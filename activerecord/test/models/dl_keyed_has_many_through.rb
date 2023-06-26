# frozen_string_literal: true

require 'models/application_record'
class DlKeyedHasManyThrough < ApplicationRecord
  self.primary_key = :through_key
end
