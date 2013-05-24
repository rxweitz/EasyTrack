class PartStatusesController < ApplicationController
  # GET /part_statuses
  # GET /part_statuses.json
  def index
    @part_statuses = PartStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @part_statuses }
    end
  end

  # GET /part_statuses/1
  # GET /part_statuses/1.json
  def show
    @part_status = PartStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @part_status }
    end
  end

  # GET /part_statuses/new
  # GET /part_statuses/new.json
  def new
    @part_status = PartStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @part_status }
    end
  end

  # GET /part_statuses/1/edit
  def edit
    @part_status = PartStatus.find(params[:id])
  end

  # POST /part_statuses
  # POST /part_statuses.json
  def create
    @part_status = PartStatus.new(params[:part_status])

    respond_to do |format|
      if @part_status.save
        format.html { redirect_to @part_status, notice: 'Part status was successfully created.' }
        format.json { render json: @part_status, status: :created, location: @part_status }
      else
        format.html { render action: "new" }
        format.json { render json: @part_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /part_statuses/1
  # PUT /part_statuses/1.json
  def update
    @part_status = PartStatus.find(params[:id])

    respond_to do |format|
      if @part_status.update_attributes(params[:part_status])
        format.html { redirect_to @part_status, notice: 'Part status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @part_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_statuses/1
  # DELETE /part_statuses/1.json
  def destroy
    @part_status = PartStatus.find(params[:id])
    @part_status.destroy

    respond_to do |format|
      format.html { redirect_to part_statuses_url }
      format.json { head :no_content }
    end
  end
end
