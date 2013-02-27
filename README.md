drupal-kickstart-behat
======================

Sandbox for playing around with Drupal Commerce Kickstart and Behat

[![Build Status](https://travis-ci.org/tayzlor/drupal-kickstart-behat.png?branch=master)](https://travis-ci.org/tayzlor/drupal-kickstart-behat)

[![Selenium Test Status](https://saucelabs.com/buildstatus/gtayzlor)](https://saucelabs.com/u/gtayzlor)

## Installation

    # Clone repo
    git clone https://github.com/tayzlor/drupal-kickstart-behat.git public_html

    # Create Drupal codebase
    cd public_html
    drush make build-commerce-kickstart.make www

    # Install Drupal
    cd www
    drush si commerce_kickstart --sites-subdir=default --db-url=mysql://USERNAME:PASSWORD@localhost/DB_NAME --account-name=admin --account-pass=admin --site-mail=admin@example.com --site-name="Commerce Kickstart Profile" --yes
    # Install testing tools
    cd ../../tests/behat
    curl -s http://getcomposer.org/installer | php
    php composer.phar install

##### Configure Behat
Modify `/tests/behat/behat.yml`
Set `base_url` to your local host

    # Run tests
    cd /tests/behat
    ./bin/behat

Create `behat.local.yml` from the example file and set your drush alias for the site.
If using Saucelabs then set `wd_host` to use your sauce username and API key.
