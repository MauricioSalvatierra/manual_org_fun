class FormulariosController < ApplicationController
  # GET /formularios
  # GET /formularios.xml
  def index
    @formularios = Formulario.paginate(:page => @page)
    #@formularios = Formulario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @formularios }
    end
  end

  # GET /formularios/1
  # GET /formularios/1.xml
  def show
    @formulario = Formulario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @formulario }
    end
  end

  # GET /formularios/new
  # GET /formularios/new.xml
  def new
    @formulario = Formulario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @formulario }
    end
  end

  # GET /formularios/1/edit
  def edit
    @formulario = Formulario.find(params[:id])
  end

  # POST /formularios
  # POST /formularios.xml
  def create
    @formulario = Formulario.new(params[:formulario])

    respond_to do |format|
      if @formulario.save
        flash[:notice] = 'Formulario was successfully created.'
        format.html { redirect_to(@formulario) }
        format.xml  { render :xml => @formulario, :status => :created, :location => @formulario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @formulario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /formularios/1
  # PUT /formularios/1.xml
  def update
    @formulario = Formulario.find(params[:id])

    respond_to do |format|
      if @formulario.update_attributes(params[:formulario])
        flash[:notice] = 'Formulario was successfully updated.'
        format.html { redirect_to(@formulario) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @formulario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /formularios/1
  # DELETE /formularios/1.xml
  def destroy
    @formulario = Formulario.find(params[:id])
    @formulario.destroy

    respond_to do |format|
      format.html { redirect_to(formularios_url) }
      format.xml  { head :ok }
    end
  end
end
