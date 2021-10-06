require 'asciidoctor/extensions'

class LazyImagePostprocessor < Asciidoctor::Extensions::Postprocessor
  def process document, output
    if document.basebackend? 'html'
      replacement = %(<img loading=lazy )
      output = output.gsub(/<img /, replacement)
    end
    output
  end
end
