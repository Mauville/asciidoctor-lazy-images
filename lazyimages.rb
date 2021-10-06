RUBY_ENGINE == 'opal' ? (require 'lib/extension') : (require_relative 'lib/extension')

Asciidoctor::Extensions.register do
  postprocessor LazyImagePostprocessor
end
