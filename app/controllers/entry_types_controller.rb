class EntryTypesController < ApplicationController
  
  def index
    @entry_types = EntryType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entry_types }
    end
  end
  
  def show
    @entry_type = EntryType.find(params[:id])
    @available_attrib_types = AttribType.find(
      :all, 
      :conditions => ["id NOT IN (?)",@entry_type.attrib_type_ids]
    ).collect {|t| [ t.name, t.id ] }

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entry_type }
    end
  end

  def new
    @entry_type = EntryType.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entry_type }
    end
  end
  
  def edit
    @entry_type = EntryType.find(params[:id])
  end

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

  def destroy
    @entry_type = EntryType.find(params[:id])
    @entry_type.destroy

    respond_to do |format|
      format.html { redirect_to(entry_types_url) }
      format.xml  { head :ok }
    end
  end

  def add
    @entry_type = EntryType.find(params[:entry_type][:id])
    @attrib_type = AttribType.find(params[:attrib_type][:id])
    
    
    respond_to do |format|
      if @entry_type.attrib_types<<@attrib_type
        flash[:notice] = 'AttribType was successfully added.'
        format.html { redirect_to(@entry_type) }
        format.xml  { head :ok }
      else 
        format.html { render :action => "show" }
        format.xml  { render :xml => @entry_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_types/1/remove_attribute_type/1
  # DELETE /entry_types/1/remove_attribute_type/1.xml
  def drop
    @entry_type = EntryType.find(params[:entry_type_id])
    @attrib_type = AttribType.find(params[:attrib_type_id])
    
    
    respond_to do |format|
      if @entry_type.attrib_types.delete(@attrib_type)
        flash[:notice] = 'AttribType was successfully removed.'
        format.html { redirect_to(@entry_type) }
        format.xml  { head :ok }
      else 
        format.html { render :action => "show" }
        format.xml  { render :xml => @entry_type.errors, :status => :unprocessable_entity }
      end
    end
  end

end
