Facter.add("systemtype") do
	setcode do
        	Facter::Util::Resolution.exec('/usr/local/bin/ec2tag systemtype')
  	end
end
