module Admin::ClienteHelper
  def add_telefono(name)
    link_to_function name do |page|
    page.insert_html :bottom, :telefonos, :partial=>'telefono',:object=>Telefono.new
  end
    
  end
end
