class Api::V1::AnnouncementsController < ApplicationController
    def index
        @announcements = Announcement.all
        render json: @announcements
    end

    def show
        @user = User.find_by(uid: params[:id])
        if @user
            render json: @user
        else
            render json: {error: 'User not found. Can\'t get user announcements'}, status: 404
        end
    end

    def create
        @announcement = Announcement.new(announcement_params)
        if @announcement.save
            render json: @announcement
        else
            render json: {error: 'Unable to create announcment'}, status: 400
        end
    end

    def destroy
        @announcement = Announcement.find_by(id: params[:id])
        if @announcement.destroy
            render json: @announcement
        else
            render json: {error: 'Unable to delete announcement'}, status: 400
        end
    end

    def update
        @announcement = Announcement.find_by(id: params[:id])
        if @announcement.update(announcement_params)
            render json: @announcement
        else
            render json: {error: 'Unable to update announcement'}, status: 400
        end
    end

    private

    def announcement_params
        params.require(:announcement).permit(:title, :description, :date, :published, :company_id, :id)
    end
end
