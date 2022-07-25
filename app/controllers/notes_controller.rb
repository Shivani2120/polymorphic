class NotesController < ApplicationController
  before_action :load_notable
  
  def index
    # @notable = Player.find(params[:player_id])
    @notes = @notable.notes
  end

  def new
    @note = @notable.notes.new
  end

  def create
    @note = @notable.notes.new(params[:note_params])
    if @note.save
      redirect_to :players, notice: "Comment created."
    else
      render :new
    end
  end
 
  def destroy
    @note = Note.find(params[:id])
    @notable = @note.notable
      if @note.destroy
        respond_to do |format|
          format.html { redirect_to @notable, notice: "Comment deleted."  }
        end
      end
   end

  def update
    @note = Note.find(params[:id])
    @note.update_attributes(params[:note])
    response_to do |format|
      format.html do
        if @note.errors.present?
            render :edit
        else
            redirect_to polymorphic_path(@notable), :notice => "Yay updated!"
        end
      end
    end
  end

private

  def load_notable
    if params[:player_id]
      @notable = Player.find(params[:player_id])
    elsif params[:photo_id]
      @notable = Photo.find(params[:photo_id])
    elsif params[:event_id]
      @notable = Event.find(params[:event_id])
    end
  end

  def note_params 
    params.require(:note).permit(:content, :notable_type, :notable_id)
  end
end

# a = Player.find(1)
# c = a.notes.create!(content: "Hello World")
