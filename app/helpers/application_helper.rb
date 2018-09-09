module ApplicationHelper

  def list_count_over_one
    if @list.line_items.count > 0
      return "<span class='tag is-dark'>#{@list.line_items.count}</span>".html_safe
    end
  end

  def cart_has_items
    return @list.line_items.count > 0
  end
end
