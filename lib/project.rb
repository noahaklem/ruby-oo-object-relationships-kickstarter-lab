class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers_project
        ProjectBacker.all.select do |backer|
            backer.project == self
        end
    end

    def backers 
        backers_project.map do |project|
            project.backer
        end
    end


end
