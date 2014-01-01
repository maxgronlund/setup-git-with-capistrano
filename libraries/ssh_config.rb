require 'erb'

module SSHConfig
  @@erb = ERB.new(File.read(File.join __dir__, 'ssh_config.erb'))
  
  def self.generate server_ip
    @server_ip = server_ip
    @@erb.result binding
  end
end

# Example usage
if $0 == __FILE__
  puts SSHConfig.generate "34.0.3.137"
end
