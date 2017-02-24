module ProjectsHelper
  def set_active_milestone(milestone)
    @selected_milestone_id == milestone.id ? 'active' : nil
  end
end
