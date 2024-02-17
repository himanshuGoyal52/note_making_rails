class NoteVersionsController < ApplicationController
    before_action :authorize_request
  
    # GET /note_versions/:id
    def index
      note_versions = NoteVersion.where(note_id: params[:id])
      render json: note_versions
    end
  end