require "rails_helper"
describe "routes for Users", type: :controller do
  it "/users routes to the users controller" do
    expect(get("/users")).to route_to("users#index")
  end
end
