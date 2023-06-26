# frozen_string_literal: true

require 'models/application_record'
class DrinkDesigner < ApplicationRecord
  has_one :chef, as: :employable
end

require 'models/application_record'
class DrinkDesignerWithPolymorphicDependentNullifyChef < ApplicationRecord
  self.table_name = "drink_designers"

  has_one :chef, as: :employable, dependent: :nullify
end

require 'models/application_record'
class DrinkDesignerWithPolymorphicTouchChef < ApplicationRecord
  self.table_name = "drink_designers"

  has_one :chef, as: :employable, touch: true
end

class MocktailDesigner < DrinkDesigner
end
