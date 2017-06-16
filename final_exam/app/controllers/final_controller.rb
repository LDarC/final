class FinalController < ApplicationController
   def index
     @finals = Final.all
   end
  
   def new
      @final = Final.new
    end
  
   def edit
    end
  
  def create
    @final = Final.new(final)

    respond_to do |format|
      if @score_paper.save
        format.html { redirect_to @final, notice: 'Score paper was successfully created.' }
        format.json { render :show, status: :created, location: @final }
      else
        format.html { render :new }
        format.json { render json: @final.errors, status: :unprocessable_entity }
      end
    end
  end
  
    def final_params
      params.require(:final).permit(:name, :number, :results)
    end
  
  
end
