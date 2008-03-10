class AttribsController < ApplicationController
  
  def index
    @entry = Entry.find(params[:entry_id])
    @attribs = @entry.attribs
  end
  
  def new
    # The entry that will get this attribute
    @entry = Entry.find(params[:entry_id])
    
    # The attribute to be added to the Entry
    @attrib = @entry.attribs.new
    
    # Filter the missing attributes to get just simple ones
    @attrib_types = @entry.missing.collect {|t| [ t.name, t.id ]}
    
    # And also get the complex ones
    entry_options = @entry.missing.collect {|t| t.entry_type_id }
    @entries = Entry.find(:all, :conditions => ['entry_type_id in (?)',entry_options]).collect {|t| [ t.to_s, t.id ]}
  end
  
  def create
    @attrib = Entry.find(params[:entry_id]).attribs.build(params[:attrib])
    if (@attrib.attrib_type.entry_type.complex)
      @attrib.value = EntryValue.new(params[:entry_value])
    else
      @attrib.value = AttribValue.new(params[:attrib_value])
    end
    
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
