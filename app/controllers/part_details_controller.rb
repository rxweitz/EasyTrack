class PartDetailsController < ApplicationController
  # GET /part_details
  # GET /part_details.json
  def index
    @part_details = PartDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @part_details }
    end
  end

  # GET /part_details/1
  # GET /part_details/1.json
  def show
    @part_detail = PartDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @part_detail }
    end
  end

  # GET /part_details/new
  # GET /part_details/new.json
  def new
    @part_detail = PartDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @part_detail }
    end
  end

  # GET /part_details/1/edit
  def edit
    @part_detail = PartDetail.find(params[:id])
  end

  # POST /part_details
  # POST /part_details.json
  def create
    @part_detail = PartDetail.new(params[:part_detail])

    respond_to do |format|
      if @part_detail.save
        format.html { redirect_to @part_detail, notice: 'Part detail was successfully created.' }
        format.json { render json: @part_detail, status: :created, location: @part_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @part_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /part_details/1
  # PUT /part_details/1.json
  def update
    @part_detail = PartDetail.find(params[:id])

    respond_to do |format|
      if @part_detail.update_attributes(params[:part_detail])
        format.html { redirect_to @part_detail, notice: 'Part detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @part_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_details/1
  # DELETE /part_details/1.json
  def destroy
    @part_detail = PartDetail.find(params[:id])
    @part_detail.destroy

    respond_to do |format|
      format.html { redirect_to part_details_url }
      format.json { head :no_content }
    end
  end
end
