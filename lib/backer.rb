class Backer
  attr_accessor :name, :backed_projects
  
  def initialize (name)
    @name=name
    @backed_projects=[]
  end
  
  def back_project(pname)
    @backed_projects << pname
    pname.add_backer(self)
  end
end