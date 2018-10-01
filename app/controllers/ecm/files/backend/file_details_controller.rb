module Ecm
  module Files
    module Backend
      class FileDetailsController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting

        helper Twitter::Bootstrap::Components::Rails::V3::ComponentsHelper

        def self.resource_class
          Ecm::Files::FileDetail
        end

        private

        def permitted_params
          params.require(:file_detail).permit(:title, :description)
        end
      end
    end
  end
end
