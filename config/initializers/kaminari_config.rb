# 分布插件GEM的配置，详细用法见https://github.com/amatsuda/kaminari

Kaminari.configure do |config|
  # config.default_per_page = 25   # 25 by default
  # config.max_per_page = nil      # nil by default
  # config.window = 4              # 4 by default
  # config.outer_window = 0        # 0 by default
  # config.left = 0                # 0 by default
  # config.right = 0               # 0 by default
  # config.page_method_name = :page   # :page by default
  # config.param_name = :page         # :page by default
end

# Initialize the Kaminari gem
::Kaminari::Hooks.init
