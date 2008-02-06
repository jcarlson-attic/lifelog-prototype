class EntryTypeAttributeTypesController < ApplicationController
  # GET /entry_type_attribute_types
  # GET /entry_type_attribute_types.xml
  def index
    @entry_type_attribute_types = EntryTypeAttributeType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entry_type_attribute_types }
    end
  end

  # GET /entry_type_attribute_types/1
  # GET /entry_type_attribute_types/1.xml
  def show
    @entry_type_attribute_type = EntryTypeAttributeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entry_type_attribute_type }
    end
  end

  # GET /entry_type_attribute_types/new
  # GET /entry_type_attribute_types/new.xml
  def new
    @entry_type_attribute_type = EntryTypeAttributeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entry_type_attribute_type }
    end
  end

  # GET /entry_type_attribute_types/1/edit
  def edit
    @entry_type_attribute_type = EntryTypeAttributeType.find(params[:id])
  end

  # POST /entry_type_attribute_types
  # POST /entry_type_attribute_types.xml
  def create
    @entry_type_attribute_type = EntryTypeAttributeType.new(params[:entry_type_attribute_type])

    respond_to do |format|
      if @entry_type_attribute_type.save
        flash[:notice] = 'EntryTypeAttributeType was successfully created.'
        format.html { redirect_to(@entry_type_attribute_type) }
        format.xml  { render :xml => @entry_type_attribute_type, :status => :created, :location => @entry_type_attribute_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entry_type_attribute_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entry_type_attribute_types/1
  # PUT /entry_type_attribute_types/1.xml
  def update
    @entry_type_attribute_type = EntryTypeAttributeType.find(params[:id])

    respond_to do |format|
      if @entry_type_attribute_type.update_attributes(params[:entry_type_attribute_type])
        flash[:notice] = 'EntryTypeAttributeType was successfully updated.'
        format.html { redirect_to(@entry_type_attribute_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entry_type_attribute_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_type_attribute_types/1
  # DELETE /entry_type_attribute_types/1.xml
  def destroy
    @entry_type_attribute_type = EntryTypeAttributeType.find(params[:id])
    @entry_type_attribute_type.destroy

    respond_to do |format|
      format.html { redirect_to(entry_type_attribute_types_url) }
      format.xml  { head :ok }
    end
  end
end
