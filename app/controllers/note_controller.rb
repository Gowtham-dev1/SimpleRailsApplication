class NoteController < ApplicationController

  def index
    @notes = Notedb.all
  end

  def show
    note_id=params[:id].to_i
    @cur=Notedb.find(note_id)
  end

  def create
    note_content = params[:content]
    new_note=Notedb.new
    new_note.content = note_content
    new_note.save
    redirect_to "/"
  end

  def delete
    note_del = params[:content].to_i
    new_note=Notedb.find(note_del)
    new_note.destroy
    new_note.save
    redirect_to "/"
  end

end
