class Api::V1::TimezonesController < ApplicationController

    def create
        @timezone = Timezone.new(timezone_params)
        if @timezone.save
            render json: @timezone
        else
            render json: {error: 'Unable to create announcment'}, status: 400
        end
    end

    def update
        @timezone = Timezone.find_by(id: params[:id])
        if @timezone.update(timezone_params)
            render json: @timezone
        else
            render json: {error: 'Unable to update announcement'}, status: 400
        end
    end

    def destroy
        @timezone = Timezone.find_by(id: params[:id])
        if @timezone.destroy
            render json: @timezone
        else
            render json: {error: 'Unable to delete announcement'}, status: 400
        end
    end

    private

    def timezone_params
        params.require(:timezone).permit(:name, :zone, :company_id, :id)
    end
end
