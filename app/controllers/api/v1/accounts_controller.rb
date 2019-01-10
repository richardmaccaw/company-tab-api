class Api::V1::AccountsController < ApplicationController

  def index
    @accounts = Account.all
    render json: @accounts
  end

  def update
    @account = account.find_by(domain: params[:domain])
    @account.update(account_params)
    if @account.save
      render json: @account, status: :accepted
    else
      render json: { errors: @account.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def account_params
    params.permit(:domain, :name)
  end

end
