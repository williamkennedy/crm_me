module Turbo
  module Ios
    class PathConfigurationsController < ApplicationController
      def show
        render json: {}
        # render json: {
        #   rules: [
        #     {
        #       patterns: ["/new$", "/edit$"],
        #       properties: {
        #         context: "modal"
        #       }
        #     }
        #   ]
        # }
      end
    end
  end
end
