# frozen_string_literal: true

#### FORM ERRORS ####

## remove the field_with_errors div that does not work with materialize forms
# ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
#   html_tag.html_safe
# end

#### RICH TEXT EDITOR ####

# require_dependency Rails.root.join('lib', 'forms', 'rich_text_editor')

## Support code reloading in development
# Rails.application.config.to_prepare do
#   MaterialForm.include RichTextEditor
# end
