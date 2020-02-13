# Common files
require 'mparticle/api_client'
require 'mparticle/api_error'
require 'mparticle/version'
require 'mparticle/configuration'

# Models
require 'mparticle/models/api_response'
require 'mparticle/models/api_response_errors'
require 'mparticle/models/app_event'
require 'mparticle/models/application_information'
require 'mparticle/models/application_state_transition_event'
require 'mparticle/models/attribution_info'
require 'mparticle/models/batch'
require 'mparticle/models/breadcrumb_event'
require 'mparticle/models/ccpa_consent_state'
require 'mparticle/models/commerce_event'
require 'mparticle/models/consent_state'
require 'mparticle/models/crash_report_event'
require 'mparticle/models/device_current_state'
require 'mparticle/models/device_information'
require 'mparticle/models/event_base'
require 'mparticle/models/event_data'
require 'mparticle/models/first_run_event'
require 'mparticle/models/gdpr_consent_state'
require 'mparticle/models/geo_location'
require 'mparticle/models/media_info'
require 'mparticle/models/network_performance_event'
require 'mparticle/models/opt_out_event'
require 'mparticle/models/product'
require 'mparticle/models/product_action'
require 'mparticle/models/product_impression'
require 'mparticle/models/profile_event'
require 'mparticle/models/promotion'
require 'mparticle/models/promotion_action'
require 'mparticle/models/push_message_event'
require 'mparticle/models/push_registration_event'
require 'mparticle/models/screen_view_event'
require 'mparticle/models/session_end_event'
require 'mparticle/models/session_start_event'
require 'mparticle/models/shopping_cart'
require 'mparticle/models/source_information'
require 'mparticle/models/user_identities'

# APIs
require 'mparticle/api/events_api'

module MParticle
  class << self
    # Customize default settings for the SDK using block.
    #   mParticle.configure do |config|
    #     config.api_key = "REPLACE WITH API KEY"
    #     config.apiScret = "REPLACE WITH API SECRET"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
