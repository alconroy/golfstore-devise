class Cart2sController < ApplicationController
  # GET /cart2s
  # GET /cart2s.json
  def index
    @cart2s = Cart2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cart2s }
    end
  end

  # GET /cart2s/1
  # GET /cart2s/1.json
  def show
    @cart2 = Cart2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cart2 }
    end
  end

  # GET /cart2s/new
  # GET /cart2s/new.json
  def new
    @cart2 = Cart2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cart2 }
    end
  end

  # GET /cart2s/1/edit
  def edit
    @cart2 = Cart2.find(params[:id])
  end

  # POST /cart2s
  # POST /cart2s.json
  def create
    @cart2 = Cart2.new(params[:cart2])

    respond_to do |format|
      if @cart2.save
        format.html { redirect_to @cart2, notice: 'Cart2 was successfully created.' }
        format.json { render json: @cart2, status: :created, location: @cart2 }
      else
        format.html { render action: "new" }
        format.json { render json: @cart2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cart2s/1
  # PUT /cart2s/1.json
  def update
    @cart2 = Cart2.find(params[:id])

    respond_to do |format|
      if @cart2.update_attributes(params[:cart2])
        format.html { redirect_to @cart2, notice: 'Cart2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cart2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart2s/1
  # DELETE /cart2s/1.json
  def destroy
    @cart2 = Cart2.find(params[:id])
    @cart2.destroy

    respond_to do |format|
      format.html { redirect_to cart2s_url }
      format.json { head :no_content }
    end
  end
end
