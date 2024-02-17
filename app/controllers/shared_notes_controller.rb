class SharedNotesController < ApplicationController
    before_action :authorize_request
  
    # POST /shared_notes
    def create
      shared_note = SharedNote.new(shared_note_params)
      if shared_note.save
        render json: shared_note, status: :created
      else
        render json: shared_note.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def shared_note_params
      params.require(:shared_note).permit(:user_id, :note_id)
    end
  end