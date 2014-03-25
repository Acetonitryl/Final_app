class AdvertisementsController < ApplicationController
	# before_filter :find_advertisement, only: [:show, :edit, :update]

	def new
		@advertisement = Advertisement.new
	end

	def create
		@advertisement = Advertisement.new(advertisement_params)
		if @advertisement.save
			flash[:notice] = "Ogłoszczenie zostało utworzone"
			redirect_to advertisement_path(@advertisement)
		else
			flash[:notice] = "Dane niepoprawne"
			render 'new'
		end
	end

	def show
		# @advertisement = Advertisement.find(params[:id])
	end

	def index
		@advertisement = Advertisement.all
	end

	private
		def advertisement_params
			params.require(:advertisement).permit(:first_name, :last_name, :email, :phone_number, :town, :course_type, :price, :bio)
		end	

		# def find_advertisement
		# 	@advertisement = Advertisement.find
		# end

end