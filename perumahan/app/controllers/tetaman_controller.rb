class TetamanController < InheritedResources::Base

layout 'application'

  private

    def taman_params
      params.require(:taman).permit(:nama, :nota)
    end
end

