class Program < ActiveRecord::Base
validates :duration, :presence => true
 validates :description, :presence => true
validates :description, length: {minimum: 20}
end
