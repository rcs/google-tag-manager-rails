require 'google-tag-manager/rails/view_helpers'

module GoogleTagManager::Rails
  class Railtie < ::Rails::Railtie
    initializer "google-tag-manager-rails" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
