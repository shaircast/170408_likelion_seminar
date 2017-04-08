class PeachterController < ApplicationController
  def index
    @tList = Tweet.all.sort_by do |x| x.tweetTime end.reverse
  end
  
  def sendTweet
    @tweetId = "@apeachapeach"
    @tweetContents = params[:tweetContents]
    @tweetTime = DateTime.now
    
    
    tweetList = Tweet.new
    tweetList.tweetId = @tweetId
    tweetList.tweetContents = @tweetContents
    tweetList.tweetTime = @tweetTime
    tweetList.save
    
    redirect_to '/peachter/index'
  end

end
