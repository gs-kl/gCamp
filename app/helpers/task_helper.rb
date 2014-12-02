module TaskHelper
  def filter_by parameter
    new_parameters = {:type => parameter}
    if params[:sort]
      new_parameters[:sort] = params[:sort]
    end
    new_parameters
  end

  def sort_by parameter
    new_parameters = {:sort => parameter}
    if params[:type]
      new_parameters[:type] = params[:type]
    end
    new_parameters
  end
end
