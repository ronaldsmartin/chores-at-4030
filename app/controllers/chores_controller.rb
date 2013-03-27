class ChoresController < ApplicationController
  # GET /chores
  # GET /chores.json
  def index
    @chores = Chore.all
  end

  # GET /chores/1
  # GET /chores/1.json
  def show
    @chore = Chore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chore }
    end
  end

  # GET /chores/new
  # GET /chores/new.json
  def new
    @chore = Chore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chore }
    end
  end

  # GET /chores/1/edit
  def edit
    @chore = Chore.find(params[:id])
  end

  # POST /chores
  # POST /chores.json
  def create
    @chore = Chore.new(params[:chore])

    if @chore.save
      Notifications.new_chore.deliver
      redirect_to @chore, notice: 'Chore was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /chores/1
  # PUT /chores/1.json
  def update
    @chore = Chore.find(params[:id])

    respond_to do |format|
      if @chore.update_attributes(params[:chore])
        format.html { redirect_to @chore, notice: 'Chore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chores/1
  # DELETE /chores/1.json
  def destroy
    @chore = Chore.find(params[:id])
    @chore.destroy

    respond_to do |format|
      format.html { redirect_to chores_url }
      format.json { head :no_content }
    end
  end
end
