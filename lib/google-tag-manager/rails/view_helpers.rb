require 'active_support/core_ext/string/output_safety'

module GoogleTagManager::Rails
  module ViewHelpers
    def google_tag_manager
      return "" unless GoogleTagManager.valid_gtm_id?

      GoogleTagManager.to_html.html_safe
    end
  end
end
