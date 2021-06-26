require 'pry'

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def project_backer
        ProjectBacker.all.select do |project|
            project.backer == self
        end
    end
    
    def backed_projects
        project_backer.map do |backer|
            backer.project
        end
    end
            
end
