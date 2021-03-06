require 'puppet/util/network_device/iom_8x4'
require 'puppet/util/network_device/iom_8x4/fact'
require 'puppet/util/network_device/iom_8x4/possible_facts'
require 'puppet/util/network_device/sorter'
require 'puppet/util/network_device/iom_8x4/dsl'

#Lookup class which helps in registering the facts and retrieving the fact values
class Puppet::Util::NetworkDevice::Iom_8x4::Facts

  include Puppet::Util::NetworkDevice::Iom_8x4::Dsl

  attr_reader :transport
  def initialize(transport)
    @transport = transport
  end

  def mod_path_base
    return 'puppet/util/network_device/iom_8x4/possible_facts'
  end

  def mod_const_base
    return Puppet::Util::NetworkDevice::Iom_8x4::PossibleFacts
  end

  def param_class
    return Puppet::Util::NetworkDevice::Iom_8x4::Fact
  end

  # TODO
  def facts
    @params
  end

  def facts_to_hash
    params_to_hash
  end
end
