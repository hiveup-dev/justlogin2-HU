Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :policies do
    resources :policies, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :policies, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :policies, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :policies do
    resources :policy_feature_groups, :only => [:index, :show]
  end

  # Admin routes
  namespace :policies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/policies" do
      resources :policy_feature_groups, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :policies do
    resources :policy_features, :only => [:index, :show]
  end

  # Admin routes
  namespace :policies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/policies" do
      resources :policy_features, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :policies do
    resources :policy_features_policies, :only => [:index, :show]
  end


  # Frontend routes
  namespace :policies do
    resources :employees, :only => [:index, :show]
  end

  # Admin routes
  namespace :policies, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/policies" do
      resources :employees, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end