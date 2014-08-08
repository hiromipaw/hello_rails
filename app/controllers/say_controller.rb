class SayController < ApplicationController
  def hello
    @hello = Hash.new
    if params[:user]
        @hello[:hello] = "#{params[:user]}!"
    else
      @hello[:hello] = "Rails!"
    end
    respond_to do |format|
      format.json { render :json => @hello }
    end
  end
end