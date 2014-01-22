require 'abstract_controller'
require 'action_view'

require 'render_anywhere/version'
require 'render_anywhere/rendering_controller'

module RenderAnywhere
  def render(*args)
    rendering_controller.render_to_string(*args)
  end

  def render_to_string_with_wicked_pdf(*args)
    rendering_controller.render_to_string_with_wicked_pdf(*args)
  end

  def rendering_controller
    @rendering_controller ||= RenderAnywhere::RenderingController.new
  end
end
