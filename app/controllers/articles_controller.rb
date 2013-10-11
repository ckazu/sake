class ArticlesController < InheritedResources::Base
  private
  def permitted_params
    params.permit article: %w|title body|
  end
end
