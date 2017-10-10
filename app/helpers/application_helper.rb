module ApplicationHelper
  def date_month_day_year(date)
    return '' if date.nil?

    l(date, format: :month_day_year)
  end

  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown.render(text).html_safe
  end
end
