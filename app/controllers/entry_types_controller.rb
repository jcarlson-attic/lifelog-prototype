class EntryTypesController < ApplicationController
  # GET /entry_types
  # GET /entry_types.xml
  def index
    @entry_types = EntryType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entry_types }
    end
  end

  # GET /entry_types/1
  # GET /entry_types/1.xml
  def show
    @entry_type = EntryType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entry_type }
    end
  end

  # GET /entry_types/new
  # GET /entry_types/new.xml
  def new
    @entry_type = EntryType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entry_type }
    end
  end

  # GET /entry_types/1/edit
  def edit
    @entry_type = EntryType.find(params[:id])
  end

  # POST /entry_types
  # POST /entry_types.xml
  def create
    @entry_type = EntryType.new(params[:entry_type])

    respond_to do |format|
      if @entry_type.save
        flash[:notice] = 'EntryType was successfully created.'
        format.html { redirect_to(@entry_type) }
        format.xml  { render :xml => @entry_type, :status => :created, :location => @entry_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entry_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entry_types/1
  # PUT /entry_types/1.xml
  def update
    @entry_type = EntryType.find(params[:id])

    respond_to do |format|
      if @entry_type.update_attributes(params[:entry_type])
        flash[:notice] = 'EntryType was successfully updated.'
        format.html { redirect_to(@entry_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entry_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_types/1
  # DELETE /entry_types/1.xml
  def destroy
    @entry_type = EntryType.find(params[:id])
    @entry_type.destroy

    respond_to do |format|
      format.html { redirect_to(entry_types_url) }
      format.xml  { head :ok }
    end
  end
end
