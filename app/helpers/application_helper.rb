module ApplicationHelper

  def block_code(code, language)
    formatter = Rouge::Formatters::HTML.new(css_class: 'highlight')
    return Rouge.highlight(code, language, formatter).html_safe
    #return lines
    #arr = Array.new
    #Rouge.highlight(code, language, formatter) do |chunk|
    #  arr.push(chunk.html_safe)
    #end
    #return arr
  end

end
