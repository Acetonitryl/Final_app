class AdvertisementsController < ApplicationController
	before_filter :set_advertisement, only: [:show, :edit, :destroy, :update]

	def new
		@advertisement = Advertisement.new
	end

	def create
		@advertisement = Advertisement.new(advertisement_params)
		@advertisement.user = current_user
		if @advertisement.save
			flash[:notice] = "Ogłoszczenie zostało utworzone"
			redirect_to advertisements_path
		else
			flash[:notice] = "Dane niepoprawne"
			render 'new'
		end
	end

	def index
		if params[:tag]
			@advertisements = Advertisement.tagged_with(params[:tag])
		else
			@advertisements = Advertisement.all
		end
	end

	def edit
		# CZY USER MOZE ZMIENIC?
	end

	def update
		# CZY USER MOZE ZMIENIC?
		if @advertisement.update(advertisement_params)
			@advertisement.update_attributes(advertisement_params)
			redirect_to advertisements_path, notice: "Udało się zaktualizować ogłoszenie"
		else
			render 'edit'
		end
	end

	def destroy
		# CZY USER MOZE ZMIENIC?

		@advertisement.delete
		redirect_to advertisements_path, notice: "Udało się usunąć ogłoszenie"
	end

	private
		def advertisement_params
			params.require(:advertisement).permit(:first_name, :last_name, :email, :phone_number, :town, :course_type, :price, :tag_list, :bio)
		end	

		def set_advertisement
			@advertisement = Advertisement.find(params[:id])
		end
end