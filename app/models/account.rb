class Account < ActiveRecord::Base
	belongs_to :user
	def self.dashboard(current_user)
		data=current_user.accounts.select("category,sum(cost) as total").group("category")
		data.map{|d|[d.category,d.total]}
	end
end
