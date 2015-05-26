class HomeController < ApplicationController
	def dashboard
		@data=Account.dashboard(current_user)
	end
	def index
		if user_signed_in?
		@accounts =current_user.accounts.last(5).reverse()
		end
	end
end
