module ApplicationHelper
  def block_code(code, language)
    formatter = Rouge::Formatters::HTML.new(css_class: 'highlight')
    return Rouge.highlight(code, language, formatter).html_safe
  end
end
