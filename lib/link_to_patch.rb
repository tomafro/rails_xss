module LinkToPatch
  def self.included(base)
    base.alias_method_chain :link_to, :xss_rails
  end
  
  def link_to_with_xss_rails(*args, &block)
    if args.first      
      link_to_without_xss_rails(ERB::Util.h(args.shift), *args, &block)
    else
      link_to_without_xss_rails(*args, &block)
    end
  end
end

ActionView::Helpers::UrlHelper.module_eval do
  include LinkToPatch
end