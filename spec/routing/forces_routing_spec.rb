require "rails_helper"

RSpec.describe ForcesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/forces").to route_to("forces#index")
    end

    it "routes to #new" do
      expect(get: "/forces/new").to route_to("forces#new")
    end

    it "routes to #show" do
      expect(get: "/forces/1").to route_to("forces#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/forces/1/edit").to route_to("forces#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/forces").to route_to("forces#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/forces/1").to route_to("forces#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/forces/1").to route_to("forces#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/forces/1").to route_to("forces#destroy", id: "1")
    end
  end
end
