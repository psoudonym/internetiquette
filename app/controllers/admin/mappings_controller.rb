class Admin::MappingsController < AdminsController
  def index
    @mappings = Mapping.all
  end

  def purge
    Mapping.where(:id => params[:ids]).destroy_all
    redirect_to admin_mappings_path
  end
end
