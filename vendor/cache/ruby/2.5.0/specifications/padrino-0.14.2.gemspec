# -*- encoding: utf-8 -*-
# stub: padrino 0.14.2 ruby lib

Gem::Specification.new do |s|
  s.name = "padrino".freeze
  s.version = "0.14.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Padrino Team".freeze, "Nathan Esquenazi".freeze, "Davide D'Agostino".freeze, "Arthur Chiu".freeze]
  s.date = "2018-01-02"
  s.description = "The Godfather of Sinatra provides a full-stack agnostic framework on top of Sinatra".freeze
  s.email = "padrinorb@gmail.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze]
  s.files = ["README.rdoc".freeze]
  s.homepage = "http://www.padrinorb.com".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "The Godfather of Sinatra".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<padrino-support>.freeze, ["= 0.14.2"])
      s.add_runtime_dependency(%q<padrino-core>.freeze, ["= 0.14.2"])
      s.add_runtime_dependency(%q<padrino-helpers>.freeze, ["= 0.14.2"])
      s.add_runtime_dependency(%q<padrino-cache>.freeze, ["= 0.14.2"])
      s.add_runtime_dependency(%q<padrino-mailer>.freeze, ["= 0.14.2"])
      s.add_runtime_dependency(%q<padrino-gen>.freeze, ["= 0.14.2"])
      s.add_runtime_dependency(%q<padrino-admin>.freeze, ["= 0.14.2"])
    else
      s.add_dependency(%q<padrino-support>.freeze, ["= 0.14.2"])
      s.add_dependency(%q<padrino-core>.freeze, ["= 0.14.2"])
      s.add_dependency(%q<padrino-helpers>.freeze, ["= 0.14.2"])
      s.add_dependency(%q<padrino-cache>.freeze, ["= 0.14.2"])
      s.add_dependency(%q<padrino-mailer>.freeze, ["= 0.14.2"])
      s.add_dependency(%q<padrino-gen>.freeze, ["= 0.14.2"])
      s.add_dependency(%q<padrino-admin>.freeze, ["= 0.14.2"])
    end
  else
    s.add_dependency(%q<padrino-support>.freeze, ["= 0.14.2"])
    s.add_dependency(%q<padrino-core>.freeze, ["= 0.14.2"])
    s.add_dependency(%q<padrino-helpers>.freeze, ["= 0.14.2"])
    s.add_dependency(%q<padrino-cache>.freeze, ["= 0.14.2"])
    s.add_dependency(%q<padrino-mailer>.freeze, ["= 0.14.2"])
    s.add_dependency(%q<padrino-gen>.freeze, ["= 0.14.2"])
    s.add_dependency(%q<padrino-admin>.freeze, ["= 0.14.2"])
  end
end
