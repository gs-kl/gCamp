module TaskHelper
  def existing_type_params
    if params[:type]
      params[:type]
    end
  end
  def existing_sort_params
    if params[:sort]
      params[:sort]
    end
  end
end
