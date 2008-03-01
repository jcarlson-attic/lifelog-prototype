class AttribTypesController < ApplicationController
  # GET /attrib_types
  # GET /attrib_types.xml
  def index
    @attrib_types = AttribType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attrib_types }
    end
  end

  # GET /attrib_types/1
  # GET /attrib_types/1.xml
  def show
    @attrib_type = AttribType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attrib_type }
    end
  end

  # GET /attrib_types/new
  # GET /attrib_types/new.xml
  def new
    @attrib_type = AttribType.new
    @entry_types = EntryType.find(:all).collect {|t| [ t.name, t.id ] }

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attrib_type }
    end
  end

  # GET /attrib_types/1/edit
  def edit
    @attrib_type = AttribType.find(params[:id])
    @entry_types = EntryType.find(:all).collect {|t| [ t.name, t.id ] }
  end

  # POST /attrib_types
  # POST /attrib_types.xml
  def create
    @attrib_type = AttribType.new(params[:attrib_type])

    respond_to do |format|
      if @attrib_type.save
        flash[:notice] = 'AttribType was successfully created.'
        format.html { redirect_to(@attrib_type) }
        format.xml  { render :xml => @attrib_type, :status => :created, :location => @attrib_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attrib_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attrib_types/1
  # PUT /attrib_types/1.xml
  def update
    @attrib_type = AttribType.find(params[:id])

    respond_to do |format|
      if @attrib_type.update_attributes(params[:attrib_type])
        flash[:notice] = 'AttribType was successfully updated.'
        format.html { redirect_to(@attrib_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attrib_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attrib_types/1
  # DELETE /attrib_types/1.xml
  def destroy
    @attrib_type = AttribType.find(params[:id])
    @attrib_type.destroy

    respond_to do |format|
      format.html { redirect_to(attrib_types_url) }
      format.xml  { head :ok }
    end
  end
end
