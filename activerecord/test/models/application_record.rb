
class ApplicationRecord < ActiveRecord::Base

  self.abstract_class = true

  after_create_commit do
    puts 'clustering..'
    ActiveRecord::Base.connection.execute("CLUSTER #{self.class.table_name} USING _rand_index_#{self.class.table_name}")
  end
end

