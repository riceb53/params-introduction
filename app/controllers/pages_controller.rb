class PagesController < ApplicationController
  def query_params_method
    # p '*' * 50
    @name = params['joel']
    @random = params['yourkey']
    # p '*' * 50
    render 'query_params_view.html.erb'
  end

  def query_name
    # make a page counter
    @counter = params['count'].to_i

    # get someone's name. make it all caps
    # @name = params['name'].upcase
    # if @name[0] == 'A'
    #   @message = "Hey, your name starts with the first letter of the alphabet!"
    # end
    render 'name_of_query.html.erb'
  end

  def guessing_game
    @guess = params[:guess].to_i
    @message = "You guessed too "
    # this is for people putting in letters
    if @guess < 1
      @message = "URdum"
    else
      if @guess > 50
        @message += "high"
      elsif @guess < 50
        @message += "low"
      else
        @message = "You got it buddy"
      end
    end
    render 'guess_a_num.html.erb'
  end

  def url_segment_parameter_method
    render 'url_seg_parm_view.html.erb'
  end

  def here_form
    render 'form.html.erb'
  end

  def form_goes_here
    render 'form_result.html.erb'
  end
end
