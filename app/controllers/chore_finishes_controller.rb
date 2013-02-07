class ChoreFinishesController < ApplicationController
  # GET /chore_finishes
  # GET /chore_finishes.json
  def index
    @chore_finishes = ChoreFinish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chore_finishes }
    end
  end

  # GET /chore_finishes/1
  # GET /chore_finishes/1.json
  def show
    @chore_finish = ChoreFinish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chore_finish }
    end
  end

  # GET /chore_finishes/new
  # GET /chore_finishes/new.json
  def new
    @chore_finish = ChoreFinish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chore_finish }
    end
  end

  # GET /chore_finishes/1/edit
  def edit
    @chore_finish = ChoreFinish.find(params[:id])
  end

  # POST /chore_finishes
  # POST /chore_finishes.json
  def create
    @chore_finish = ChoreFinish.new(params[:chore_finish])

    respond_to do |format|
      if @chore_finish.save
        format.html { redirect_to @chore_finish, notice: 'Chore finish was successfully created.' }
        format.json { render json: @chore_finish, status: :created, location: @chore_finish }
      else
        format.html { render action: "new" }
        format.json { render json: @chore_finish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chore_finishes/1
  # PUT /chore_finishes/1.json
  def update
    @chore_finish = ChoreFinish.find(params[:id])

    respond_to do |format|
      if @chore_finish.update_attributes(params[:chore_finish])
        format.html { redirect_to @chore_finish, notice: 'Chore finish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chore_finish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chore_finishes/1
  # DELETE /chore_finishes/1.json
  def destroy
    @chore_finish = ChoreFinish.find(params[:id])
    @chore_finish.destroy

    respond_to do |format|
      format.html { redirect_to chore_finishes_url }
      format.json { head :no_content }
    end
  end
end
