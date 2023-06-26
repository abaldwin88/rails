# frozen_string_literal: true

require 'models/application_record'
class UnencryptedBook < ApplicationRecord
  self.table_name = "encrypted_books"
end

require 'models/application_record'
class EncryptedBook < ApplicationRecord
  self.table_name = "encrypted_books"

  encrypts :name, deterministic: true
end

require 'models/application_record'
class EncryptedBookWithDowncaseName < ApplicationRecord
  self.table_name = "encrypted_books"

  validates :name, uniqueness: true
  encrypts :name, deterministic: true, downcase: true
end

require 'models/application_record'
class EncryptedBookThatIgnoresCase < ApplicationRecord
  self.table_name = "encrypted_books"

  encrypts :name, deterministic: true, ignore_case: true
end
