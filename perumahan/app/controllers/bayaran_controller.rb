class BayaranController < InheritedResources::Base

  private

    def bayaran_params
      params.require(:bayaran).permit(:tarikh, :jumlah, :nota, :rumah_id)
    end
end

