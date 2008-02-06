class AttributeValuesController < ApplicationController
  # GET /attribute_values
  # GET /attribute_values.xml
  def index
    @attribute_values = AttributeValue.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attribute_values }
    end
  end

  # GET /attribute_values/1
  # GET /attribute_values/1.xml
  def show
    @attribute_value = AttributeValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attribute_value }
    end
  end

  # GET /attribute_values/new
  # GET /attribute_values/new.xml
  def new
    @attribute_value = AttributeValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attribute_value }
    end
  end

  # GET /attribute_values/1/edit
  def edit
    @attribute_value = AttributeValue.find(params[:id])
  end

  # POST /attribute_values
  # POST /attribute_values.xml
  def create
    @attribute_value = AttributeValue.new(params[:attribute_value])

    respond_to do |format|
      if @attribute_value.save
        flash[:notice] = 'AttributeValue was successfully created.'
        format.html { redirect_to(@attribute_value) }
        format.xml  { render :xml => @attribute_value, :status => :created, :location => @attribute_value }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attribute_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attribute_values/1
  # PUT /attribute_values/1.xml
  def update
    @attribute_value = AttributeValue.find(params[:id])

    respond_to do |format|
      if @attribute_value.update_attributes(params[:attribute_value])
        flash[:notice] = 'AttributeValue was successfully updated.'
        format.html { redirect_to(@attribute_value) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attribute_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_values/1
  # DELETE /attribute_values/1.xml
  def destroy
    @attribute_value = AttributeValue.find(params[:id])
    @attribute_value.destroy

    respond_to do |format|
      format.html { redirect_to(attribute_values_url) }
      format.xml  { head :ok }
    end
  end
end
