require 'test_helper'

class BestScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @best_score = best_scores(:one)
  end

  test "should get index" do
    get best_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_best_score_url
    assert_response :success
  end

  test "should create best_score" do
    assert_difference('BestScore.count') do
      post best_scores_url, params: { best_score: { game: @best_score.game, score: @best_score.score } }
    end

    assert_redirected_to best_score_url(BestScore.last)
  end

  test "should show best_score" do
    get best_score_url(@best_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_best_score_url(@best_score)
    assert_response :success
  end

  test "should update best_score" do
    patch best_score_url(@best_score), params: { best_score: { game: @best_score.game, score: @best_score.score } }
    assert_redirected_to best_score_url(@best_score)
  end

  test "should destroy best_score" do
    assert_difference('BestScore.count', -1) do
      delete best_score_url(@best_score)
    end

    assert_redirected_to best_scores_url
  end
end
