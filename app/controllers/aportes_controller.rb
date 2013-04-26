class AportesController < ApplicationController
  # GET /aportes
  # GET /aportes.json
  def index
    @aportes = Aporte.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aportes }
    end
  end

  # GET /aportes/1
  # GET /aportes/1.json
  def show
    @aporte = Aporte.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aporte }
    end
  end

  # GET /aportes/new
  # GET /aportes/new.json
  def new
    @aporte = Aporte.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aporte }
    end
  end

  # GET /aportes/1/edit
  def edit
    @aporte = Aporte.find(params[:id])
  end

  # POST /aportes
  # POST /aportes.json
  def create
    @aporte = Aporte.new(params[:aporte])

    respond_to do |format|
      if @aporte.save
        format.html { redirect_to @aporte, notice: 'Aporte was successfully created.' }
        format.json { render json: @aporte, status: :created, location: @aporte }
      else
        format.html { render action: "new" }
        format.json { render json: @aporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aportes/1
  # PUT /aportes/1.json
  def update
    @aporte = Aporte.find(params[:id])

    respond_to do |format|
      if @aporte.update_attributes(params[:aporte])
        format.html { redirect_to @aporte, notice: 'Aporte was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aportes/1
  # DELETE /aportes/1.json
  def destroy
    @aporte = Aporte.find(params[:id])
    @aporte.destroy

    respond_to do |format|
      format.html { redirect_to aportes_url }
      format.json { head :no_content }
    end
  end

   

  def aprobar 

  @aportei = Aporte.find(params[:id])  
  @post  = Post.new

  @post.name = @aportei.name
  @post.title= @aportei.title
  @post.content = @aportei.content

  @post.file =@aportei.file
  @post.file2 = @aportei.file2
  @post.file3 = @aportei.file3

  
  if @post.save
     redirect_to posts_path
     
  end
      
  end




end
