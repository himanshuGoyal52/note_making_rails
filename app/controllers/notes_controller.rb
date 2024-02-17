class NotesController < ApplicationController
    before_action :authorize_request
  
    # POST /notes
    def create
      note = @current_user.notes.build(note_params)
      if note.save
        render json: note, status: :created
      else
        render json: note.errors, status: :unprocessable_entity
      end
    end
  
    # GET /notes/:id
    def show
      note = @current_user.notes.find_by(id: params[:id])
      if note
        render json: note
      else
        render json: { error: 'Note not found' }, status: :not_found
      end
    end
  
    # PUT /notes/:id
    def update
      note = @current_user.notes.find_by(id: params[:id])
      if note.update(note_params)
        render json: note
      else
        render json: note.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /notes/:id
    def destroy
      note = @current_user.notes.find_by(id: params[:id])
      if note
        note.destroy
        head :no_content
      else
        render json: { error: 'Note not found' }, status: :not_found
      end
    end
  
    private
  
    def note_params
      params.require(:note).permit(:content)
    end
  end