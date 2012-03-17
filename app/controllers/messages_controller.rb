class MessagesController < ApplicationController
  def index
  end


  ente
    if current_user.twitter.post('/statuses/update.json', :status => “HerokuからHelloWorld”)
      flash[:success] = “HerokuからHelloWorldしました"
      redirect_to root_path
    else
      flash[:error] = “HerokuからのHelloWorldは失敗しました"
      render :action => "index"
    end
  end
