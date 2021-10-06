require_relative 'asciidoctor-lazy-images/extension'

Asciidoctor::Extensions.register do
  postprocessor LazyImagePostprocessor
end
