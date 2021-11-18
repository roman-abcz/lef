application: SampleAWebApp {
  label: "SampleWebApp"
  #url: "http://localhost:8080/bundle.js"
   file: "bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    new_window_external_urls: ["https://docs.looker.com/*","https://github.com/*"]
    use_form_submit: yes
    use_embeds: yes
    use_downloads: no
    use_iframes: yes
    use_clipboard: yes
    external_api_urls: []
    oauth2_urls: []
    scoped_user_attributes: ["user_value"]
    global_user_attributes: ["locale"]
    core_api_methods: ["me"]
    }
}
