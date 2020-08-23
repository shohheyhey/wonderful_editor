# scaffoldでarticleを作成したときにroutesのresourcesと連携している。このファイルのコメントアウトを外した状態で、routesにresources :articleが無いとrspecが通らない

# require "rails_helper"

# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to test the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator. If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails. There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.

# RSpec.describe "/articles", type: :request do
#   # This should return the minimal set of attributes required to create a valid
#   # Article. As you add validations to Article, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) {
#     skip("Add a hash of attributes valid for your model")
#   }

#   let(:invalid_attributes) {
#     skip("Add a hash of attributes invalid for your model")
#   }

#   # This should return the minimal set of values that should be in the headers
#   # in order to pass any filters (e.g. authentication) defined in
#   # ArticlesController, or in your router and rack
#   # middleware. Be sure to keep this updated too.
#   let(:valid_headers) {
#     {}
#   }

#   describe "GET /index" do
#     it "renders a successful response" do
#       Article.create! valid_attributes
#       get articles_url, headers: valid_headers, as: :json
#       expect(response).to be_successful
#     end
#   end

#   describe "GET /show" do
#     it "renders a successful response" do
#       article = Article.create! valid_attributes
#       get article_url(article), as: :json
#       expect(response).to be_successful
#     end
#   end

#   describe "POST /create" do
#     context "with valid parameters" do
#       it "creates a new Article" do
#         expect {
#           post articles_url,
#                params: { article: valid_attributes }, headers: valid_headers, as: :json
#         }.to change { Article.count }.by(1)
#       end

#       it "renders a JSON response with the new article" do
#         post articles_url,
#              params: { article: valid_attributes }, headers: valid_headers, as: :json
#         expect(response).to have_http_status(:created)
#         expect(response.content_type).to match(a_string_including("application/json"))
#       end
#     end

#     context "with invalid parameters" do
#       it "does not create a new Article" do
#         expect {
#           post articles_url,
#                params: { article: invalid_attributes }, as: :json
#         }.to change { Article.count }.by(0)
#       end

#       it "renders a JSON response with errors for the new article" do
#         post articles_url,
#              params: { article: invalid_attributes }, headers: valid_headers, as: :json
#         expect(response).to have_http_status(:unprocessable_entity)
#         expect(response.content_type).to eq("application/json")
#       end
#     end
#   end

#   describe "PATCH /update" do
#     context "with valid parameters" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }

#       it "updates the requested article" do
#         article = Article.create! valid_attributes
#         patch article_url(article),
#               params: { article: invalid_attributes }, headers: valid_headers, as: :json
#         article.reload
#         skip("Add assertions for updated state")
#       end

#       it "renders a JSON response with the article" do
#         article = Article.create! valid_attributes
#         patch article_url(article),
#               params: { article: invalid_attributes }, headers: valid_headers, as: :json
#         expect(response).to have_http_status(:ok)
#         expect(response.content_type).to eq("application/json")
#       end
#     end

#     context "with invalid parameters" do
#       it "renders a JSON response with errors for the article" do
#         article = Article.create! valid_attributes
#         patch article_url(article),
#               params: { article: invalid_attributes }, headers: valid_headers, as: :json
#         expect(response).to have_http_status(:unprocessable_entity)
#         expect(response.content_type).to eq("application/json")
#       end
#     end
#   end

#   describe "DELETE /destroy" do
#     it "destroys the requested article" do
#       article = Article.create! valid_attributes
#       expect {
#         delete article_url(article), headers: valid_headers, as: :json
#       }.to change { Article.count }.by(-1)
#     end
#   end
# end
