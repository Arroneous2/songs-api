require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end

  test "show" do
    get "/songs/#{Song.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id=", "title=", "artist=", "album=", "year="], data.keys
  end

  test "create" do
    assert_difference "Song.count", 1 do
      post "/songs.json", params: { title: "lake", artist: "water", album: "h20",  year: 1922 }
      assert_response 200
    end
  end

  test "destroy" do
    assert_difference "Song.count", -1 do
      delete "/songs/#{Song.first.id}.json"
      assert_response 200
    end
  end
  
end
