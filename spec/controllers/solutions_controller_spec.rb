require 'spec_helper'

describe SolutionsController do
  before do
    controller.stub(:authenticate_user!)
    controller.stub(:current_user => user)
  end

  let(:user) { FactoryGirl.create(:user) }

  describe "POST create" do
    it "should redirect to the solution after save" do
      attributes = FactoryGirl.attributes_for(:solution, :user => user)

      post :create, :solution => attributes

      solution_id = assigns(:solution).id

      expect(response).to redirect_to(solution_path(solution_id))
    end

    it "should render new after errors on save" do
      post :create, :solution => { :name => "Foo" }

      expect(response).to render_template(:new)
    end
  end

  context "user validation" do
    let(:solution_of_user) { FactoryGirl.create(:solution, :user => user) }
    let(:solution_of_other_user) { FactoryGirl.create(:solution, :user => other_user) }
    let(:other_user) { FactoryGirl.create(:user) }

    describe "GET edit" do
      context "when the current_user is not the owner of the solution" do
        it "should redirect to show" do
          get :edit, :id => solution_of_other_user.id

          expect(response).to redirect_to(solution_path(solution_of_other_user.id))
        end
      end

      context "when the current_user is the owner of the solution" do
        it "should not redirect to show" do
          get :edit, :id => solution_of_user.id

          expect(response).to_not redirect_to(solution_path(solution_of_other_user.id))
        end
      end
    end

    describe "PUT update" do
      context "when the current_user is not the owner of the solution" do
        it "should redirect to show" do
          put :update, :id => solution_of_other_user.id

          expect(response).to redirect_to(solution_path(solution_of_other_user.id))
        end
      end

      context "when the current_user is the owner of the solution" do
        it "should not redirect to show" do
          put :update, :id => solution_of_user.id, :solution => { :name => nil }

          expect(response).to_not redirect_to(solution_path(solution_of_other_user.id))
        end
      end
    end
  end
end
