module GoogleTagManager
  PLACEHOLDER_GTM_ID = "GTM-XXXX"

  def self.valid_gtm_id?
     gtm_id.nil? || gtm_id == "" || gtm_id == PLACEHOLDER_GTM_ID ? false : true
  end
  def self.gtm_id
    @@gtm_id ||= PLACEHOLDER_GTM_ID
  end
  def self.gtm_id=(gtm_id)
    @@gtm_id = gtm_id
  end

  def self.to_html
    <<-HTML
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=#{gtm_id}"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','#{gtm_id}');</script>
<!-- End Google Tag Manager -->
    HTML

  end
end
if defined?(Rails)
  require 'google-tag-manager/rails/railtie'
end
