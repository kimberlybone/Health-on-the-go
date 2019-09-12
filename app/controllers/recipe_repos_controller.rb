class RecipeReposController < ApplicationController
  def show
    @recipe_repo = RecipeRepo.find(params[:id])
  end

  def new
    @recipe_repo = RecipeRepo.new
    @recipes = Recipe.all
    @user_repos = UserRepo.all
  end

  def create
    @recipe_repo = RecipeRepo.create(recipe_repo_key)
    redirect_to @recipe_repo
  end

  def edit
    @recipes = Recipe.all
    @user_repos = UserRepo.all
    @recipe_repo = RecipeRepo.find(params[:id])
  end

  def update
    @recipe_repo = RecipeRepo.find(params[:id])
    @recipe_repo.update(recipe_repo_key)
    redirect_to @recipe_repo
  end

  def destroy
    @recipe_repo = RecipeRepo.find(params[:id])
    @recipe_repo.destroy
  end

  def recipe_repo_key
    params.require(:recipe_repo).permit(:user_repo_id, :recipe_id)
  end
end
