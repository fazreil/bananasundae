class RerumahController < InheritedResources::Base

layout 'application'

  private

    def rumah_params
      params.require(:rumah).permit(:nombor, :sah, :nama, :telefon, :nota, :taman_id)
    end


end

