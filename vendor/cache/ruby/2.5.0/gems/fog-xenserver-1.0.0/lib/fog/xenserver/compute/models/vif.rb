module Fog
  module XenServer
    class Compute
      module Models
        class Vif < Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VIF

          provider_class :VIF
          collection_name :vifs

          identity :reference

          attribute :allowed_operations
          attribute :current_operations
          attribute :currently_attached
          attribute :device
          attribute :ipv4_allowed
          attribute :ipv6_allowed
          attribute :locking_mode
          attribute :mac,                :aliases => :MAC,                  :default => "",         :as => :MAC
          attribute :mac_autogenerated,  :aliases => :MAC_autogenerated,    :default => "True",     :as => :MAC_autogenerated
          attribute :mtu,                :aliases => :MTU,                  :default => "0",        :as => :MTU
          attribute :other_config,                                          :default => {}
          attribute :qos_algorithm_params,                                  :default => {}
          attribute :qos_algorithm_type,                                    :default => "ratelimit"
          attribute :qos_supported_algorithms
          attribute :runtime_properties
          attribute :status_code
          attribute :status_detail
          attribute :uuid

          has_one_identity   :metrics,   :vifs_metrics
          has_one_identity   :network,   :networks
          has_one_identity   :vm,        :servers,          :aliases => :VM,  :as => :VM

          require_before_save :vm, :network, :device

          alias_method :server, :vm

          def set_device_number
            raise ArgumentError, "vm is required for this operation" if vm.nil?
            device_number = vm.vifs.empty? ? 0 : vm.vifs.map(&:device).max.to_i + 1
            self.device = device_number.to_s
          end
        end
      end
    end
  end
end