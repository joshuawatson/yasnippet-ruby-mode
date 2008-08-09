# This was cloned from a TextMate bundle for yasnippet.
# --
module ${1:${TM_FILENAME/(?:\A|_)([A-Za-z0-9]+)(?:\.rb)?/(?2::\u$1)/g}}
	module ClassMethods
		$0
	end
	
	module InstanceMethods
		
	end
	
	def self.included(receiver)
		receiver.extend         ClassMethods
		receiver.send :include, InstanceMethods
	end
end