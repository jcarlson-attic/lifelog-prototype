class AttribsController < ApplicationController
  
  def index
    @entry = Entry.find(params[:entry_id])
    @attribs = @entry.attribs
  end
  
  def new
    @entry = Entry.find(params[:entry_id])
    @attrib = @entry.attribs.new
    @attrib_value = AttribValue.new
    @attrib_types = @entry.missing.collect {|t| [ t.name, t.id ]}
  end
  
  def create
    @attrib = Entry.find(params[:entry_id]).attribs.build(params[:attrib])
    @attrib.value = AttribValue.new(params[:attrib_value])
    
    respond_to do |format|
      if @attrib.save
        flash[:notice] = "Attribute was successfully created"
        format.html { redirect_to(entry_attribs_path) }
        format.xml  { render :xml => @attrib, :status => :created, :location => @attrib }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attrib.errors, :status => :unprocessable_entity}
      end
    end
  end
  
end
