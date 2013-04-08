class ConsultantController < ApplicationController
  def new
   if request.post?
      @doc=Consultant.create(:doctor=>params[:doctor])
     if @doc
       session[:id]=@doc.id
       redirect_to :action=>"edit"
     end
   end
  end

  def edit

	@p=Consultant.new
   @user_details=fetch_current_name(session[:id])
   logger.info"...........1........#{@user_details}"

	@p1=Consultant.find_by_doctor(@user_details)
	logger.info"...........1........#{@p1.id}"
 
 	if request.post?
        @pat=Consult.create(:patient=>params[:patient],:consultant_id=>params[:doc])
	end
  end


  def display	
  	@pat1=Consult.all
  if request.post?
  	if(@pat=Consultant.find(params[:doc][:doctorid]))
  		@abc="patients available"
#logger.info"...........12...........#{@pat.patient}"
  	@con=@pat.consults
    else
    @abc="no patients"
  end
end
end
def create


end


  	#logger.info "========== #{@pat.consults.inspect} "
  	# @doc=Array.new
  	# @patient=Array.new
  	# @p=Array.new
  	# i=0
  	# j=0

  	# while j<=@pat1.count
  	# @pat1.each do |p|
  	# 	@doc[i]=p.doctor_id
  	# 	@user_details=fetch_current_name(@doc[i])
  	# 	i=i+1
  	# end
  
  
  	
  		
  	
  	# @pat1.each do |q|
  	# 	@patient[i]=q.patient
  	# 	@pat=@patient[i]

  	# 	i=i+1
  	# end
  
  
# logger.info"..........patient array....#{@patient}"
  		
  	
#   	@pat1.each do |r|
#   		@p[i]=r.id
#   		@id=@p[i]
#   		i=i+1
#   	end
# j=j+1
# end
  
end
