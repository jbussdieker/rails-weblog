module ApplicationHelper
  def markdown(text)
    html_renderer = Redcarpet::Render::HTML.new(render_options = {})
    markdown = Redcarpet::Markdown.new(html_renderer, extensions = {})
    markdown.render(text).html_safe
  end
end
