require_relative 'ssh_config'

module SSHSetup
  def self.run ssh_config_path, server_ip
    File.open ssh_config_path, 'w' do |f|
      f << SSHConfig.generate(server_ip)
    end
  end
end

# Example usage
if $0 == __FILE__
  ## Test example:
  ssh_config_path = './ssh_config'
  server_ip = "34.0.3.137"
  
  ## On server:
  #ssh_config_path = '/etc/ssh/ssh_config'
  
  SSHSetup.run ssh_config_path, server_ip
end
