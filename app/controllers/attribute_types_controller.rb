class AttributeTypesController < ApplicationController
  # GET /attribute_types
  # GET /attribute_types.xml
  def index
    @attribute_types = AttributeType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attribute_types }
    end
  end

  # GET /attribute_types/1
  # GET /attribute_types/1.xml
  def show
    @attribute_type = AttributeType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attribute_type }
    end
  end

  # GET /attribute_types/new
  # GET /attribute_types/new.xml
  def new
    @attribute_type = AttributeType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attribute_type }
    end
  end

  # GET /attribute_types/1/edit
  def edit
    @attribute_type = AttributeType.find(params[:id])
  end

  # POST /attribute_types
  # POST /attribute_types.xml
  def create
    @attribute_type = AttributeType.new(params[:attribute_type])

    respond_to do |format|
      if @attribute_type.save
        flash[:notice] = 'AttributeType was successfully created.'
        format.html { redirect_to(@attribute_type) }
        format.xml  { render :xml => @attribute_type, :status => :created, :location => @attribute_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attribute_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attribute_types/1
  # PUT /attribute_types/1.xml
  def update
    @attribute_type = AttributeType.find(params[:id])

    respond_to do |format|
      if @attribute_type.update_attributes(params[:attribute_type])
        flash[:notice] = 'AttributeType was successfully updated.'
        format.html { redirect_to(@attribute_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attribute_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_types/1
  # DELETE /attribute_types/1.xml
  def destroy
    @attribute_type = AttributeType.find(params[:id])
    @attribute_type.destroy

    respond_to do |format|
      format.html { redirect_to(attribute_types_url) }
      format.xml  { head :ok }
    end
  end
end
