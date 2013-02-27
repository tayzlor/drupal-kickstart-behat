api = 2
core = 7.x
; Include the definition for how to build Drupal core directly, including patches:
includes[] = http://drupalcode.org/project/commerce_kickstart.git/blob_plain/refs/heads/7.x-2.x:/drupal-org-core.make
; Download the install profile and recursively build all its dependencies:
projects[commerce_kickstart][version] = 2.x-dev

