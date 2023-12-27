vmabs_sources = [
  'main.vala',
  'window.vala',
  'application.vala',
  'register.vala'
]

vmabs_deps = [
  dependency('gtk4'),
]

gnome = import('gnome')

vmabs_sources += gnome.compile_resources('vmabs-resources',
  'vmabs.gresource.xml',
  c_name: 'vmabs'
)

executable('vmabs', vmabs_sources,
  vala_args: '--target-glib=2.50',  dependencies: vmabs_deps,
  install: true,
)
