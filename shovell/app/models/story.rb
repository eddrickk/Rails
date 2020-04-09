class Story < ActiveRecord::Base
	validates :name, :presence => true
	validates :link, :presence => true
	has_many :votes
	def to_param
		"#{id}-#{name.gsub(/\W/,'-').downcase}"
	end
end
