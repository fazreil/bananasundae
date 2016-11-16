class RumahsController < InheritedResources::Base

  private

    def rumah_params
      params.require(:rumah).permit(:nombor, :sah)
    end
end

