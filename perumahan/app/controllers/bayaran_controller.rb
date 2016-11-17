class BayaranController < InheritedResources::Base

  private

    def bayaran_params
      params.require(:bayaran).permit(:tarikh, :jumlah, :nota)
    end
end

