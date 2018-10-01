module Ecm
  module Files
    module Backend
      class FoldersController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting
        include ResourcesController::ActsAsPublishedConcern
        include ResourcesController::BatchActionsConcern

        def self.resource_class
          Ecm::Files::Folder
        end

        private

        def permitted_params
          params.require(:folder).permit(:name, :description, :published, assets: [])
        end
      end
    end
  end
end
