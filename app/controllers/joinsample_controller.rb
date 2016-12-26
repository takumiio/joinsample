class JoinsampleController < ApplicationController

  def index

    @results = Conference.where(validity: true)
      .joins(:shared_rooms)
      .where('shared_rooms.user_id = ?', 'AAA')

  end

end
