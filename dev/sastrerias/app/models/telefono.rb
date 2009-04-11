class Telefono < ActiveRecord::Base
  belongs_to :cliente
  attr_accessor :should_destroy
  
  def should_destroy?
    should_destroy.to_i == 1
  end
end
