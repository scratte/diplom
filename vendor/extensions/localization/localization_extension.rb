# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class LocalizationExtension < Spree::Extension
  version "0.1.1"
  description "Localization support for Spree"
  url "http://support.spreecommerce.com/wiki/1/I18n"

  def activate
    Spree::BaseController.class_eval do
        before_filter :set_user_language
        
        private
        def set_user_language
          I18n.locale = 'ru-RU'
        end
    end
  end
end
