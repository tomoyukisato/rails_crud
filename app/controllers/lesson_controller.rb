class LessonController < ApplicationController
    def step1
        render plain: "こんにちは、#{params[:name]}"
    end
    def step2
        render plain: params[:controller] + "#" + params[:action]
    end
    def step5
        flash[:notion] = "step6に移動します"
        redirect_to action: "step6"
    end
    def step6
        render plain: flash[:notion]
    end
    def step8
        @price = (20000* 1.1).floor
        render "step7"
    end
    def step10
        @comment = "<strong>安全はHTML</strong>"
    end
    def step14
        @message = "ごきげんよう\nRailsの勉強をがんがりましょう"
    end
    def step18
        @item = {"フライパン"=>2000,"ワイングラス"=>1000,"ペッパーミル"=>1500}
    end
end
