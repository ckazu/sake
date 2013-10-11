module ApplicationHelper
  def linkable?(name)
    %w(id title name).include? name
  end

  def date?(obj)
    obj.is_a? Date
  end

  def time?(obj)
    obj.is_a? Time
  end

  def date_or_time?(obj)
    date?(obj) or time?(obj)
  end
  alias_method :time_or_date?, :date_or_time?

  def relational?(name)
    respond_to?(:parent) && name == "#{parent.class.name.downcase}_#{parent.class.primary_key}"
  end

  def relational_title
    parent.try(:name) || parent.try(:title) || parent.try(:description) || parent.id
  end
end
