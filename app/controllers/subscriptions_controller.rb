class SubscriptionsController < ApplicationController
    def index
    end

    def new 
        @subscription = Subscription.new
    end 

    def create
        @subscription = Subscription.create(subscription_params)
        if @subscription.save 
            redirect_to subscriptions_path(@subscription)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private 

    def subscription_params
        params.require(:subscription).permit(:email)
    end
end
