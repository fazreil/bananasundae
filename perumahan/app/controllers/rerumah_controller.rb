class RerumahController < InheritedResources::Base

  private

    def rumah_params
      params.require(:rumah).permit(:nombor, :sah, :nama, :telefon, :nota)
    end
end

