class MembersController < ApplicationController

	def index
		@members = Member.all

	end
	def new
		@member = Member.new
	end

	def edit
		@member = Member.find(params[:id])
	end

	def create
		@member = Member.new(params.require(:member).permit(:name, :website))

		@member.save


  		#add mock interests for now
 		@interests_name = ['chocolate', 'netflix', 'computers']
 		@interests_name.each { |i_name|
  			@interest = Interest.create(:name => i_name, :member => @member)
		}

		if @member.save
	    	redirect_to @member
	  	else
	    	render 'new'
	  	end



	end

	def show
    	@member = Member.find(params[:id])

    	@interests = Interest.where(:member_id => @member.id).all
  	end

	def update
	  @member = Member.find(params[:id])
	  @f = params['member']['id']
	  
	  @friend = Member.find(params['member']['id'])
	  @friendship = Friendship.new
	  @friendship.member1 = @member
	  @friendship.member2 = @friend

	  if @friendship.save
	    	redirect_to @member
	  	else
	    	render 'update'
	  	end
	  

	 
	  # if @member.update(member_params)
	  #   redirect_to @member
	  # else
	  #   render 'edit'
	  # end
	end
 
	# private
	#   def member_params
	#     params.require(:member).permit(:id)
	#   end



end
