module ApplicationHelper
  def markdown(text)
    render_options = {
      :hard_wrap => true,
      :filter_html => true,
    }
    html_renderer = Redcarpet::Render::HTML.new(render_options)
    extensions = {
      :autolink => true,
      :fenced_code_blocks => true,
      :no_intra_emphasis => true,
    }
    markdown = Redcarpet::Markdown.new(html_renderer, extensions)
    markdown.render(text).html_safe
  end
end
