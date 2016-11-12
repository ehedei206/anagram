get '/words' do

  @words=Word.all
    erb :"/words/index"
end

get '/words/new' do
	@word = ""
    erb :"/words/new"
end

get '/words/:id' do
	@word = Word.find(params[:id])
	erb :"/words/show"

end



post '/words' do

    word = Word.create(text: params[:word])
    redirect "/words/#{word.id}"

end

 get '/words/:id/edit' do

    @word = Word.find(params[:id]) 
    erb :"/words/edit"
  end
 
  put '/words/:id' do
    # find the word using params[:id] 
    # and set it to the @word variable.
    # Then update the @word's text attribute
    # with params[:text]
     @word = Word.find(params[:id]) 
     @word.text= params[:text]
     @word.save
    erb :"/words/show"
  end
