module Jekyll
  class RoboticistsIndex < Page
    def initialize(site, base, dir)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'roboticists.html')
      self.data['roboticists'] = self.get_roboticists(site)
    end

    def get_roboticists(site)
      roboticists_dir = site.config['roboticists']
      roboticists = Array.new
      cnt = 0
      Dir["#{roboticists_dir}/**/*.yml"].each do |this_path|
        config = YAML.load(File.read(this_path))
        if config["publish"]
          roboticists[cnt] = config
          roboticists[cnt]["url"] = File.join(dir,File.basename(File.dirname(this_path)))
          cnt = cnt + 1
        end
      end
      return roboticists
    end
  end

  class GenerateRoboticists < Generator
    safe true
    priority :normal

    def generate(site)
      roboticists = RoboticistsIndex.new(site, site.source, "/roboticists")

      roboticists.render(site.layouts, site.site_payload)
      roboticists.write(site.dest)

      site.pages << roboticists
      site.static_files << roboticists
    end
  end
end

