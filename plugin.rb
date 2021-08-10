# frozen_string_literal: true

# name: discourse-disable-unsubscribe
# about: Remove unsubscribe links for members of a particular group
# version: 0.0.1
# authors: Jay Pfaffman
# url: https://github.com/literatecomputing/discourse-disable-unsubscribe
# required_version: 2.7.0
# transpile_js: false

enabled_site_setting :no_unsubscribe_enabled

after_initialize do
  load File.expand_path('extensions/build_email_helper.rb', __dir__)
  ::Email::BuildEmailHelper.prepend BuildEmailHelperExtension
end
