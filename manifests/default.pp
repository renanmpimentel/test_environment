node 'development.test.vm' {
  include epel

  class {
    'nodejs':
      dev_package => true
  }  
}