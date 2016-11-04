class TreeNodeBuilderBelongsToVat < TreeNodeBuilder
  def ext_management_system_node
    super
    @node[:hideCheckbox] = true
  end

  def ems_folder_node
    super
    @node[:hideCheckbox] = true if object.kind_of?(Datacenter)
    @node[:select] = options[:selected].include?("EmsFolder_#{object[:id]}") unless object.kind_of?(Datacenter)
  end

  def normal_folder_node
    generic_node(object.name, "blue_folder.png" , _("Folder: %{folder_name}") % {:folder_name => object.name})
  end

  def cluster_node
    super
    @node[:hideCheckbox] = true
  end

  def generic_node(text, image, tip = nil)
    super
    @node[:cfmeNoClick]  = true
    @node[:checkable] = options[:checkable] if options.key?(:checkable)
  end
end
