class Cliente < ActiveRecord::Base
  has_many :telefonos
  after_update :save_telefonos
 
  
  def tel_attributes=(tel_attributes)
    tel_attributes.each do |attributes|
      if attributes[:id].blank?
        telefonos.build(attributes)
      else
        telefono=telefonos.detect{|t| t.id==attributes[:id].to_i}
        telefono.attributes=attributes
      end  
    end
  end
  
  def save_telefonos
    telefonos.each do |t|
      if t.should_destroy?
        t.destroy
      else
        t.save(false)
      end
      
    end
  end
end
