drupal-kickstart-behat
======================


A sandbox proof of concept for a session at Drupalcamp London (http://2013.drupalcamplondon.co.uk/session/zip-bdd-do-dah-zip-bdd-ay)
Uses the Drupal 7 Commerce Kickstart profile (http://drupal.org/project/commerce_kickstart),
with Behat/Mink testing using Travis CI (https://travis-ci.org) and Saucelabs (https://saucelabs.com)


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

Edit `behat.local.yml` and set your drush alias and base_url for the site you are testing.

If you are using Saucelabs then set

    Behat\MinkExtension\Extension:
      selenium2:
          wd_host: SAUCE_USER:API_KEY@ondemand.saucelabs.com/wd/hub

to contain your sauce username and API key.

If you are using the JIRA connector then set

    VIPSoft\JiraExtension\Extension:
      host: http://YOURJIRAHOST.com/

to contain the path to your JIRA instance.
