Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :paperclip #:local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
 
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  config.action_mailer.delivery_method = :smtp

   config.action_mailer.smtp_settings = {
   address: "smtp.mailgun.org",
   port: 587,
   domain: "sandbox2e8a999bdde74cf2b63ef708ae96dc45.mailgun.org",
   authentification: 'plain',
   user_name: "postmaster@sandbox2e8a999bdde74cf2b63ef708ae96dc45.mailgun.org",
   password:'0647cb52be9b5323625358fb8119247a-c9270c97-f2211895',

  }

  # config.action_mailer.smtp_settings = {
  #  address: "smtp.googlemail.com",
  #  port: 587,
  #  enable_starttls_auto: true,
  #  authentification: 'login',
  #  user_name: "jaouad.pxy@gmail.com",
  #  password:'Yasmine05051980',

  # }

  config.paperclip_defaults = {
    storage: :s3,
    path: 'class/:attachment/:id/:style/:filename',
    s3_host_name: 's3-ap-southeast-2.amazonaws.com',
    s3_credentials: {
      bucket: 'twosidemarketplace',
      access_key_id: 'AKIAJEY6BWJYB6NZY3QA',
      secret_access_key: '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',
      s3_region: 'ap-southeast-2'
    }
  }
end
