class Api::V1::LinksController < ApplicationController

    def show
        @link = Link.find_by(id: params[:id])
        render json: @link
    end

    def create
        @link = Link.new(link_params)
        if @link.save
            render json: @link
        else
            render json: {error: 'Unable to create announcment'}, status: 400
        end
    end

    def destroy
        @link = Link.find_by(id: params[:id])
        if @link.destroy
            render json: @link
        else
            render json: {error: 'Unable to delete announcement'}, status: 400
        end
    end

    def update
        @link = Link.find_by(id: params[:id])
        if @link.update(link_params)
            render json: @link
        else
            render json: {error: 'Unable to update announcement'}, status: 400
        end
    end

    private

    def link_params
        params.require(:link).permit(:name, :url, :company_id, :id)
    end
end
