class TetamanController < InheritedResources::Base

  private

    def taman_params
      params.require(:taman).permit(:nama, :nota)
    end
end

