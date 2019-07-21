class Admin::DiscsController < ApplicationController

    def create
        @disc = Disc.new(disc_params)
        @disc.save
        redirect_to edit_admin_item_path(params[:item_id])
    end

    def destroy
    
    end

    private
        def disc_params
            params.require(:disc).permit(:name, :item_id)
        end
end
