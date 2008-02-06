class AttributesController < ApplicationController
  # GET /attributes
  # GET /attributes.xml
  def index
    @attributes = Attribute.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attributes }
    end
  end

  # GET /attributes/1
  # GET /attributes/1.xml
  def show
    @attribute = Attribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attribute }
    end
  end

  # GET /attributes/new
  # GET /attributes/new.xml
  def new
    @attribute = Attribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attribute }
    end
  end

  # GET /attributes/1/edit
  def edit
    @attribute = Attribute.find(params[:id])
  end

  # POST /attributes
  # POST /attributes.xml
  def create
    @attribute = Attribute.new(params[:attribute])

    respond_to do |format|
      if @attribute.save
        flash[:notice] = 'Attribute was successfully created.'
        format.html { redirect_to(@attribute) }
        format.xml  { render :xml => @attribute, :status => :created, :location => @attribute }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attributes/1
  # PUT /attributes/1.xml
  def update
    @attribute = Attribute.find(params[:id])

    respond_to do |format|
      if @attribute.update_attributes(params[:attribute])
        flash[:notice] = 'Attribute was successfully updated.'
        format.html { redirect_to(@attribute) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attributes/1
  # DELETE /attributes/1.xml
  def destroy
    @attribute = Attribute.find(params[:id])
    @attribute.destroy

    respond_to do |format|
      format.html { redirect_to(attributes_url) }
      format.xml  { head :ok }
    end
  end
end
