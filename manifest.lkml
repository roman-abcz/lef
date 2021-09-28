application: rb_api {
  label: "rb_api"
  url: "http://localhost:8080/bundle.js"
  # file: "bundle.js"
  entitlements: {
    core_api_methods: ["me"]
  }
}
