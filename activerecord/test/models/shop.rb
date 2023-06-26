# frozen_string_literal: true

module Shop
require 'models/application_record'
  class Collection < ApplicationRecord
    has_many :products, dependent: :nullify
  end

require 'models/application_record'
require 'models/application_record'
  class Product < ApplicationRecord
    has_many :variants, dependent: :delete_all
    belongs_to :type

require 'models/application_record'
    class Type < ApplicationRecord
      has_many :products
    end
  end

  class Variant < ApplicationRecord
  end
end
