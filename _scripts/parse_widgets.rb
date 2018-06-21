#!/usr/bin/env ruby
# 2016 (c) Daniel Vinciguerra

require 'json'

module Smashing
  class ParseWidgets

    def self.parse_line(string)
      /^\|\s*\[(.+?)\]\s?\((.+?)\)\s*\|\s+(.+?)\s*\|\s*\[(.+?)\]\s?\((.+?)\)\s*/m =~ string

      # all field are required
      if $1 and $2 and $3 and $4 and $5
        return { title: $1, link: $2, description: $3, author: { name: $4, link: $5 } }
      end
    end

  end
end


# parsing DATA lines
list = []
while DATA.gets do
  line = Smashing::ParseWidgets.parse_line($_)
  list << line if line
end


# output json to stdout
puts JSON.pretty_generate(list)


# additional widget list:
#   https://github.com/Smashing/smashing/wiki/Additional-Widgets

__END__
| [Aare Temperature](https://github.com/lbischof/dashing-aare-temperatur) | Displays the current temperature of the swiss Aare river | [lbischof](https://github.com/lbischof) |
| [Advent Calendar](https://github.com/BlackPepperSoftware/dashing-advent) | Displays advent images in December in front of a snowy background | [matthewgerrard](https://github.com/matthewgerrard) @ [Black Pepper](https://github.com/BlackPepperSoftware)|
| [Airbrake](https://github.com/ParkWhiz/dashing-airbrake) | Count of unresolved errors for Airbrake projects | [mstratman](https://github.com/mstratman) @ [ParkWhiz](https://github.com/ParkWhiz)
| [Analog Clock](https://gist.github.com/YuriKazakov/c85f8cbde7235105dd16)| An analog clock to display the current time| [Jonas Schmidt](https://github.com/YuriKazakov) |
| [Analog Clock Beautiful](https://github.com/jorgemorgado/dashing-analog-clock) | A beautiful and scalable analog clock | [Jorge Morgado](https://github.com/jorgemorgado) |
| [Android Google Play Dashing Widget](https://gist.github.com/x2on/7007757c222aacbd102b) | Dashing Widget for displaying current Google Play Ratings| [Felix Schulze](https://github.com/x2on) @ [AutoScout24](https://github.com/AutoScout24) |
| [Android Google Play Market](https://gist.github.com/eckolancer/48625c07d1820c875f75) | Android Google Play Market application score and voter count| [Chris Barry](https://github.com/Eckolancer) |
| [AppFigures Widget](https://github.com/tomvars/dashing-appfigures) | Get information from the AppFigures API into your dashboard| [Thomas Varsavsky](https://github.com/tomvars) |
| [App Store Rating and Votes](https://gist.github.com/stefano-bortolotti/11316213) | Get the average rating and total votes of your iOS App | [Stefano Bortolotti](https://github.com/stefano-bortolotti) |
| [Asana Tasks](https://gist.github.com/willjohnson/6334811) | Today's tasks in Asana | [Will Johnson](https://github.com/willjohnson) |
| [Atatus](https://github.com/atatus/dashing-atatus) | Displays the performance metrics and error count for your Atatus projects| [Fizer Khan](https://github.com/fizerkhan) |
| [Atlassian Jira Agile: Remaining Sprint Days](https://gist.github.com/christiangalsterer/10002006) | Displays the remaining days for the active sprint for a given scrum board | [Christian Galsterer](https://github.com/christiangalsterer) |
| [Atlassian JIRA Issue Count](https://gist.github.com/vossim/c0072296d3297d3ae6fd)| Displays the total number of issues for a given jql query (doesn't count the number of issues in a call, but uses the "total" given by jira| [vossim](https://github.com/vossim) |
| [Atlassian JIRA List Current Sprint Issues](https://gist.github.com/matt-snider/be38718bc9ff3ee26f9c)| Lists JIRA issues in the current sprint for a specific team. | [matt-snider](https://github.com/matt-snider) |
| [Atlassian Jira: Number of issues in a Jira filter query](https://gist.github.com/christiangalsterer/1b24f2b42aa39ba63a92) | Displays the number of issues in a filter query configured and saved in Jira. Supports multiple filters and widgets in a single dashboard.| [Christian Galsterer](https://github.com/christiangalsterer) |
| [Atlassian Jira: Number of issues in a Jira JQL query](https://gist.github.com/christiangalsterer/53f2a84b5e6b0265dd12) | Displays the number of issues in a JQL query result. The query is defined in the widget configuration. Supports multiple queries and widgets in a single dashboard. This is a generalised version of the [Atlassian Jira: Number of issues in a Jira filter query](https://gist.github.com/christiangalsterer/1b24f2b42aa39ba63a92).| [Christian Galsterer](https://github.com/christiangalsterer) |
| [Atlassian JIRA Open Issues](https://gist.github.com/ahanmal/3186a5869684bb514ad3) | Displays number of open issues currently in JIRA for a given project| [ahanmal](https://github.com/ahanmal) |
| [Atlassian JIRA Sprint Burn Down](https://github.com/vossim/dashing-jira-burndown) Gist: [Gist](https://gist.github.com/vossim/1d2c1794fba362fd091e)| Displays a number of sprint burn down charts (last sprint and a configurable number of sprints before the last sprint)| [vossim](https://github.com/vossim) |
| [Atlassian JIRA Sprint Progress Meter](https://gist.github.com/dragonai/a1dae02d476f6055f82a) | Displays a progress meter for your current JIRA sprint| [Shehmeer Jiwani](https://github.com/dragonai) |
| [AWS CloudWatch](https://gist.github.com/s0enke/68b3288bd1cbec3336ad) | Arbitrary CloudWatch graphs in Dashing | [s0enke](https://github.com/s0enke) |
| [AWS CloudWatch NewRelic Docker all in one](https://gist.github.com/shineyear/355d1ae38dd43d6ff092) | Integration of cloudwatch newrelic docker monitor | [shineyear](https://github.com/shineyear) |
| [Bacula widget](https://gist.github.com/visibilityspots/c28ec9f53fb2753a3c85) | Displays the bacula state of your backup environment | [visibilityspots](https://github.com/visibilityspots) |
| [Badge Overflow: Unearned Badges](https://gist.github.com/sharplet/6474970) | Calculates progress towards unearned Stack Overflow badges | [Adam](https://github.com/sharplet) & [Stephanie Sharp](https://github.com/stephsharp) |
| [Badge Overflow: User Profile](https://gist.github.com/stephsharp/6484136) | Displays user profile info for Stack Exchange sites, including reputation and number of awarded badges | [Adam](https://github.com/sharplet) & [Stephanie Sharp](https://github.com/stephsharp) |
| [Bamboo Plan Status](https://gist.github.com/gavinbunney/10617832) | Atlassian Bamboo plan build status | [Gavin Bunney](https://github.com/gavinbunney) |
| [Bar Chart](https://github.com/jorgemorgado/dashing-barchart) | Simple widget to render bar charts on Dashing | [Jorge Morgado](https://github.com/jorgemorgado) |
| [BART Departures](https://gist.github.com/cannuk/589d7d4dcbefc3af024e) | BART Departure information filtered by station | [Sean Neden](https://github.com/cannuk) |
| [B-Cycle Bikes Available](https://gist.github.com/stephenyeargin/7678371) | Get bikes and docks available for B-cycle (bike sharing service) | [Stephen](https://github.com/stephenyeargin) |
| [Betaseries](https://github.com/a5e/dashing-betaseries) | tv-shows airing next retrieved from betaseries | [Antoine](https://github.com/a5e) |
| [Big Image](https://gist.github.com/jwalton/7916168) | Scale an image to fit in the widget | [Benbria](https://github.com/benbria) |
| [Bitbucket Commit Counter](https://github.com/SocialbitGmbH/DashingBitBucketCommitCountWidget) | Bitbucket commit counter | [SocialbitGmbH](https://github.com/SocialbitGmbH) |
| [Bitbucket Commit Counter (per year)](https://github.com/SocialbitGmbH/DashingBitBucketCommitYearCountWidget) | Bitbucket commit counter (per year) | [SocialbitGmbH](https://github.com/SocialbitGmbH) |
| [Bitbucket Repository Counter](https://github.com/SocialbitGmbH/DashingBitBucketRepositoryCountWidget) | Bitbucket Repository Counter| [SocialbitGmbH](https://github.com/SocialbitGmbH) |
| [Bitbucket Repository Statistics](https://gist.github.com/jsturdevant/15a542122b198449903d) | Displays Last Activity, Open Issues, Open Pulls, Forks, and Watchers for a given set of Bitbucket repositories. | [Jon Sturdevant](https://github.com/jsturdevant) |
| [Bitbucket User Followers](https://gist.github.com/jeroenbegyn/5385092) | Users followers from Bitbucket | [jeroenbegyn](https://github.com/jeroenbegyn) |
| [Broadsoft Queue Count](https://gist.github.com/Alsoongit/087d57fade4bf9f4c16e) | Call center Queue calls waiting | [Alsoongit](https://gist.github.com/Alsoongit/087d57fade4bf9f4c16e)
| [Build Window](https://github.com/rouanw/build-window) | Displays the status of your latest CI builds and the percentage of recent builds that have passed. Supports Jenkins, TeamCity, Travis, Go CD and Bamboo. | [Rouan Wilsenach](https://github.com/rouanw) |
| [Camera Widget](https://github.com/jchampy/camera-widget) | Displays and updates static jpeg images from IP security cameras | [Jake Champlin](https://github.com/jchampy) |
| [Campaign Monitor Widget](https://github.com/Garrettogrady/dashing-CampaignMonitor) | Mail stats from Campaign Monitor | [Garrett O'Grady](https://github.com/garrettogrady) |
| [Canada Map](https://gist.github.com/jrunge/e69c573adbd571696458) | Displays geo points in Canada |  [Josh Runge](https://github.com/jrunge) |
| [Capital Bikeshare](https://gist.github.com/dbryant4/7794245) | Get bikes and docks available for Capital Bikeshare (Cabi) | [Derrick Bryant](https://github.com/dbryant4) |
| [Catchpoint® Systems](https://gist.github.com/jbfarez/f94cc23a6e8c7f1f1328) | Display the response time and availability of your Website based on [Catchpoint monitoring tool](http://www.catchpoint.com/) | [Jean Baptiste Farez](https://github.com/jbfarez) |
| [Chartjs Charts](https://gist.github.com/tywhang/b4a67180da816eb0695f) | Easily add Charts into Dashing with Chartjs (Line, Bar, Radar, Polar Area, Pie, Doughnut) | [Ted Whang](https://github.com/tywhang/) |
| [Chuck Norris Facts](https://gist.github.com/windowfinn/f8c35551138babcc3e9e) | Internet Chuck Norris Database Fact Generator Job | [WindowFinn](https://gist.github.com/windowfinn) |
| [CircleCI](https://gist.github.com/petehamilton/5494978) | Circle CI Project Build Status | [Pete Hamilton](https://github.com/petehamilton) |
| [CircleCI (List)](https://gist.github.com/petehamilton/5494590) | Circle CI Project Build Statuses | [Pete Hamilton](https://github.com/petehamilton) |
| [CircleCI: Forecast](https://github.com/mtchavez/dashing-circleci) | Circle CI Project Status Forecast| [Chavez](https://github.com/mtchavez) |
| [Classy](https://gist.github.com/bennacer860/853691aed8b9a4cbc535)| Online and mobile fundraising platform|[Rafik Bennacer](https://github.com/bennacer860) |
| [Cloudability](https://gist.github.com/ColbyAley/6181160) | Cloudability monthly spend | [Colby Aley](https://github.com/ColbyAley) |
| [Code Climate](https://gist.github.com/dgehrett/6829168) | Code Climate GPA | [dgehrett](https://gist.github.com/dgehrett) |
| [Code Climate](https://github.com/Edools/dashing-codeclimate) | Code Climate widget | [Rafael Carvalho](https://github.com/carvalhorafael) |
| [Codecov](https://github.com/ParkWhiz/codecov_list) | Codecov list of status and trends in test coverage | [Mike Bueti](https://github.com/mbueti) |
| [Codeship](https://github.com/adamtrousdale/dashing-codeship) | Codeship widget | [Adam Trousdale](https://github.com/adamtrousdale) |
| [Coderwall Rank](https://gist.github.com/mathias/7293278) | Show your team's Coderwall rank | [mathias](https://github.com/mathias) |
| [Confluence Calendar](https://gist.github.com/rahulsom/350f00cd49c782157ee4) | Show confluence calendar's events | [Rahul Somasunderam](https://github.com/rahulsom) |
| [Constant Contact](https://gist.github.com/jonasrosland/067d8c80168258013c67) | Show the number of subscribers for your distribution lists | [jonasrosland](https://github.com/jonasrosland) |
| [Countdown](https://gist.github.com/ruleb/5353056) | Countdown widget | [Ruleb](https://github.com/ruleb) |
| [Countdown. REVISED EDITION!!!!](https://gist.github.com/ioangogo/7b9208d0ef41c90ec322/) | A revised version of ruleb's countdown widget, that for some reason removed the widget when there was 1 hour left. | [ioangogo](https://github.com/ioangogo). Forked from [Ruleb](https://github.com/ruleb) |
| [Daily Dilbert](https://gist.github.com/7025094) | Daily Dilbert strip retrieved from http://www.dilbert.com | [Brunas](https://github.com/Brunas) |
| [Daily XKCD](https://gist.github.com/matt-snider/fd453f2c31a9d0131c52) | Daily XKCD comic retrieved from http://xkcd.com/ | [matt-snider](https://github.com/matt-snider) |
| [Desk.com Case Count](https://gist.github.com/runar/8927307) | Get the number of cases in your Desk.com account, using their [API](http://dev.desk.com) | [Runar](https://github.com/runar) |
| [Discovergy](https://github.com/olf/dashing_discovergy) | monitor your home's power consumption when using a Discovergy SmartMeter [API](https://my.discovergy.com/json/Api/help) | [Olf](https://github.com/olf) |
| [Disqus](http://blog.seanja.com/2012/11/dashing-widget-for-disqus-comment-count/) | Display Comment Count from Disqus | [SeanJA](https://github.com/seanja) |
| [Docker Hub](https://gist.github.com/jonasrosland/47b71cb4920fb6df1a45) | Metrics such as stars and pulls from the Docker Hub | [jonasrosland](https://github.com/jonasrosland) |
| [Doughnut Chart](https://github.com/jorgemorgado/dashing-doughnutchart) | Simple widget to render doughnut charts on Dashing | [Jorge Morgado](https://github.com/jorgemorgado) |
| [Dynamic Map](https://gist.github.com/SaMnCo/40619c7df84c873621e2) | Dynamically plots a Google Heatmap | [SaMnCo](https://github.com/SaMnCo) |
| [EC2 CloudWatch](https://gist.github.com/jwalton/6614087) | CloudWatch stats in Dashing | [Benbria](https://github.com/benbria) |
| [Errbit](https://github.com/kevintuhumury/dashing-errbit) | Displays the unresolved errors from the projects you've specified on your Errbit server | [kevintuhumury](https://github.com/kevintuhumury) |
| [Exchange Free/Busy Data](https://gist.github.com/maclennann/b084fa409966f22badaf) | Displays whether a user is free or busy (or soon to be) in their Exchange calendar. | [Norm MacLennan](https://github.com/maclennann) |
| [FB link stats](https://gist.github.com/gregology/5196740) | Details of facebook link shares | [Gregology](https://github.com/gregology) |
| [FB page stats](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/facebook.rb) | Details of facebook page stats | [ephigenia](https://github.com/Ephigenia) |
| [FB Posts and Page Info](https://github.com/ssalinas/facebook_posts) | Facebook page information and a carosel of tagged posts | [ssalinas](https://github.com/ssalinas) |
| [Fikket participants](https://gist.github.com/joren/5525808) | Amount of participants for a Fikket event | [joren](https://github.com/joren) |
| [Fitbit](https://github.com/kevintuhumury/dashing-fitbit) | Displays your steps, calories, distance, battery level and more from Fitbit.com | [kevintuhumury](https://github.com/kevintuhumury) |
| [Font Awesome Icon](https://gist.github.com/tolleiv/da8fcf69316b1d16fcf6) | Font Awesome Icons | [tolleiv](https://github.com/tolleiv) |
| [Forecast.io Weather](https://gist.github.com/mjamieson/5274790) | Displays weather from forecast.io | [mjamieson](https://github.com/mjamieson) |
| [Forecast.io w/ Climacons](https://gist.github.com/ysim/6768311) | Displays extensive weather information from forecast.io with Climacons | [ysim](https://github.com/ysim) |
| [Forecast.io w/ Skycons](https://gist.github.com/toddq/5422352) | Displays weather from forecast.io with Skycons | [toddq](https://github.com/toddq) |
| [Foursquare Widget] (https://gist.github.com/parthibanloganathan/6186456) | Checkins with images for a Foursquare venue | [parthibanloganathan](https://github.com/parthibanloganathan) |
| [Foursquare chekins widget] (https://gist.github.com/visibilityspots/cb1a95fdb16ef662842a) | Simple display of total # checked in people at a venue | [visibilityspots](https://github.com/visibilityspots) |
| [Foursquare Venue Checkins](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/foursquare_venue.rb) | Checkins on a foursquare venue | [ephigenia](https://github.com/Ephigenia) |
| [Freeday Countdown](https://gist.github.com/Brunas/3f4a08fe875f9bcb883f) | Countdown till next freeday, e.g. weekend or bank holiday | [Brunas](https://github.com/Brunas) |
| [FreeSwitch](https://gist.github.com/mestizo/2b283adcd7542ca90d95a06b928de483) | Display Freeswitch Statistics | [Mestizo](https://github.com/mestizo) |
| [Freshdesk Dash](https://gist.github.com/kazekent/8684313)| Display a short list of Freshdesk users with the most tickets assigned. | [Kent Dahl](https://github.com/kazekent) |
| [FridayBeer](https://gist.github.com/mr-deamon/10736460) | Show your need for a friday-afternoon beer | [mr-deamon](https://github.com/mr-deamon)
| [FullPie chart](https://gist.github.com/mattia72/8168893) | Show awesome pie charts with ease | [mattia72](https://github.com/mattia72) |
| [Fullscreen Mode](https://gist.github.com/tylermauthe/75e70a7bc4ae7c237453) | Hotkey for Fullscreen Mode | [tylermauthe](https://github.com/tylermauthe) |
| [GitHub Next Milestone](https://gist.github.com/jwalton/6499159) | Show next GitHub Milestone and due date | [Benbria](https://github.com/benbria) |
| [GitHub Next Milestone (multiple projects)](https://github.com/DefactoSoftware/dashing-widgets/tree/master/github_milestone) | Show next GitHub Milestone and due date for multiple projects | [Jurre](https://github.com/jurre) |
| [GitHub Organization News Feed](https://gist.github.com/kimh/8894101) | Display your organization's activities and events | [kimh](https://github.com/kimh) |
| [GitHub Organization Open Pull Requests](https://gist.github.com/dragonai/9d91e0f0bc78265e8281) | Displays all currently open PRs across a GitHub organization| [Shehmeer Jiwani](https://github.com/dragonai) |
| [GitHub OctoStatus](https://github.com/bkeepers/dashing-octostatus) | Show the current GitHub Status (using Ajax instead of a Ruby job) | [@bkeepers](https://github.com/bkeepers) |
| [GitHub OctoStatus](https://gist.github.com/dacamp/7166065) | Pulling out all the stop(light)s while displaying the current GitHub status | [David Campbell](https://github.com/dacamp) |
| [GitHub Repositories List](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/github_user_repos.rb) | User or Organisation Repositories Watchers/Forks | [ephigenia](https://github.com/Ephigenia) |
| [GitHub Repository Stats](https://github.com/cmaujean/dashing-github-stats) | Various stats for a given repository | [cmaujean](https://github.com/cmaujean), [erikh](https://github.com/erikh) |
| [GitHub Status](https://gist.github.com/iainjmitchell/5840161) | Displays the current status of GitHub | [Iain Mitchell](https://github.com/iainjmitchell)/[Ben Flowers](https://github.com/benoj) |
| [GitHub User Info](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/github_userinfo.rb) | User Info from GitHub | [ephigenia](https://github.com/Ephigenia) |
| [GitHub Issues](https://gist.github.com/wadewilliams/f6e5e0354c3fb61fb910) | Displays number of GitHub issues, customizable by label | [Wade Williams](https://github.com/wadewilliams)
|[GitLab Group Open Merge Requests](https://gist.github.com/matt-snider/11317ce6e6b11163e12d) | Displays all currently open MRs across a GitLab group | [matt-snider](https://github.com/matt-snider)
| [Gitlab issues and bugs](https://gist.github.com/joren/6318392) | Gitlab issues and bugs widget per project. | [joren](http://github.com/joren) |
| [Gitlab repo + issue open](https://gist.github.com/Fiyorden/6020838) | Gitlab acces via API show a list of project and issues opened | [Fiyorden](https://github.com/Fiyorden) |
| [Google Calendar] (https://gist.github.com/tfohlmeister/5781087) | Google Calendar events widget with custom calendar colors | [tfohlmeister](https://github.com/tfohlmeister) |
| [Google Calendar] (https://gist.github.com/jmb/33ae3a33d6e8dbffd102) | Google Calendar events widget which uses API v3 to allow access to private calendars | [jmb](https://github.com/jmb) |
| [Google Calendar] (https://gist.github.com/jsyeo/39d3fde3afbffdd31093) | Google Calendar events widget that fetches events from the calendar's private address | [Jason Yeo](https://github.com/jsyeo) |
| [Google Calendar Attendees] (https://gist.github.com/blackjid/2f0b6010d6ffab479d61) | Google Calendar event attendees widget | [blackjid](https://github.com/blackjid) @ [platanus](https://github.com/platanus) |
| [Google Maps](https://github.com/andmcgregor/dashing-map) | Google Map widget with custom colors | [andmcgregor](https://github.com/andmcgregor) |
| [Google Spreadsheet](https://gist.github.com/a-know/e0ad37c2e137d2da0916) | Get and Show cell's value of Google Spreadsheet | [a-know](https://github.com/a-know) |
| [Google Spreadsheet Widget](https://github.com/mtempel/spreadsheetDemo) | Shows a complete spreadsheet in your dashboard | [mtempel](https://github.com/mtempel) |
| [Google Traffic Map](https://github.com/wolfspyre/dashing-trafficmap) | Google Map widget to display traffic for a given lat/long | [wolfspyre](https://github.com/wolfspyre) |
| [Google Places by location](https://gist.github.com/juan-grases/e9c340f4642ac60d39d6) | Food establishments by location using Google Places API | [juan-grases](https://github.com/juan-grases) |
| [Google Play Market](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/google_play.rb) | Google Play Market application score and voter count| [ephigenia](https://github.com/Ephigenia) |
| [Google Play Advanced](https://gist.github.com/tfohlmeister/5781087) | Google Play market statistics with advanced list support| [tfohlmeister](https://github.com/tfohlmeister) |
| [Google Visualizations Column Chart](https://gist.github.com/machadolab/e12f31bf7e6a602f3229) | Draw nice column charts using Google Visualizations library| [machadolab](https://github.com/machadolab) |
| [Google Visualizations Gauge](https://gist.github.com/machadolab/cf869c0ceb7ef8e086ff) | Draw nice gauges on the dashboard | [machadolab](https://github.com/machadolab) |
| [Google Visualizations Line Chart](https://gist.github.com/lizer/bfb71771537e437618c8) | Draw nice line charts on the dashboard | [lizer](https://gist.github.com/lizer) |
| [Google Visualizations Pie Chart](https://gist.github.com/machadolab/b6929c1b913a9f62b12a) | Draw nice pie charts on the dashboard | [machadolab](https://github.com/machadolab) |
| [Graphite Metrics Widget](https://github.com/edasque/graphite-text-widget) | Displays Graphite metric via text, changerate & sparkline widget | [edasque](https://github.com/edasque) |
| [Graphite Gauge Widget](https://github.com/kassi/dashing-graphite-gauge-widget) | Displays Graphite gauge values with sparkline | [Karsten Silkenbäumer](https://github.com/kassi) |
| [Graphite Graphs](https://gist.github.com/joerayme/5934555) | Displays Graphite graph images and auto-resizes and refreshes them | [joerayme](https://github.com/joerayme) |
| [Graphite](https://gist.github.com/Ulrhol/5088efcc94de2fecad5e) | Another job to pull stats from Graphite and present in dashboard widgets | [Ulrhol](https://github.com/Ulrhol) |
| [Hadoop_dfs_stats]( https://gist.github.com/dfaa3c84e36c9e5dad42) | Hadoop DFS stats Dashbord| [Juned Memon](https://github.com/junaid18183) |
| [hadoop_job_tracker_stats]( https://gist.github.com/663025b174cc5d8bf486) | Hadoop job tracker stats Dashbord| [Juned Memon](https://github.com/junaid18183) |
| [Elastic_search]( https://gist.github.com/1a323e86edc1e61b16ddb05cbcd5a50a) | Elastic search Dashbord| [Juned Memon](https://github.com/junaid18183) |
| [Elasticsearch marvel] (https://github.com/sterchelen/elasticsearch_dashing_module) | Health Elasticsearch monitorer | [Sterchele Nicolas] (https://github.com/sterchelen) |
| [HAMWeather.com weather](https://gist.github.com/Brunas/ad6b7493902145b54a8c) | Extended weather widget using HAMWeather.com | [Brunas](https://github.com/Brunas) |
| [Haproxy](https://github.com/rstruber/dashing-haproxy) | Dashboard for haproxy overall status and down hosts. | [Ryan Struber](https://github.com/rstruber) |
| [Hatena Bookmark Favorites List](https://gist.github.com/a-know/0246e1156b391973cf8f) | Displays [Hatena Bookmark](http://b.hatena.ne.jp/) Favorites List of user you specified. | [a-know](https://github.com/a-know) |
| [Havag Info](https://gist.github.com/stefan-walluhn/8c617513b6188547a864) | Displays departure times of trams and buses in Halle (Saale), Germany | [Terminal.21](http://www.terminal21.de) |
| [Health](https://github.com/aelse/dashing-health) | A widget to display warning and critical error counts. | [Alexander Else] (https://github.com/aelse) |
| [Helpscout](https://gist.github.com/synoptase/1f4802bec625f65bc32f) | Displays the number of open tickets in a mailbox | [synoptase](https://github.com/synoptase) |
| [Heroku Dynos](https://gist.github.com/adamtrousdale/e8c7cc339563af3e8d62dae3ec0b1657) | Displays number of active Heroku dynos | [Adam Trousdale](https://github.com/adamtrousdale) |
| [Heroku Status](https://gist.github.com/bhankus/6828887) | Shows Heroku status | [bhankus](https://gist.github.com/bhankus) |
| [Hipchat User Presence](https://gist.github.com/machadolab/4f67d88ec6e31dbc11ec) | Show hipchat user presence state | [machadolab](https://gist.github.com/machadolab) |
| [HockeyApp](https://gist.github.com/x2on/eb33c56213db3771cd01) | Dashing Widget for displaying HockeyApp App Crashes. | [x2on](https://github.com/x2on) @ [AutoScout24](https://github.com/AutoScout24) |
| [Honeybadger Errors](https://gist.github.com/bhankus/6828496) | Displays top Honeybadger errors | [bhankus](https://gist.github.com/bhankus) |
| [Hot Status](https://gist.github.com/yannrouillard/796fe74d4cbf0cf42f47) | Changes the widget's colour depending on the status text displayed (Ok, Warning...) | [Yann Rouillard](https://gist.github.com/yannrouillard/) |
| [Hot Progress Bars](https://gist.github.com/yannrouillard/48cb4238f2be032c7a98) | Variant of [Progress Bars](https://gist.github.com/mdirienzo/6716905) which changes progress bars and widget's colour depending on the value of each progress bar | [Yann Rouillard](https://gist.github.com/yannrouillard/) |
| [Hotness](https://gist.github.com/rowanu/6246149) | Changes the widget's colour depending on the value displayed | [DashboardDude](http://dashboarddude.com/) |
| [Hotfloat](https://github.com/Dufgui/hotfloat) | Changes the widget's colour depending on the float value displayed and see evolution from last value | [Guillaume Dufour](https://github.com/Dufgui) |
| [HSL departures](https://gist.github.com/rrudd/0388e754bdc228b15a64ac84243a5019) | A widget to show upcoming departures from desired stops in the Helsinki region | [Raoul Udd](https://github.com/rrudd) |
| [Icescrum-widget](https://github.com/Flash-Dash/Icescrum-widget) | A widget to extract data from Icescrum and input it into a widget | [Flash-Dash](https://github.com/Flash-Dash) |
| [Icinga Status Summary](https://gist.github.com/MWilkinson/a99df410ed9060724b24) | A widget to display the summary of Hosts/Services | [Mark Wilkinson](https://github.com/MWilkinson) |
| [IFrame widget](https://gist.github.com/hussfelt/a6fe71ebd7cce327df29) | A widget to display an iframe on the dashboard | [Henrik Hussfelt](https://github.com/hussfelt) |
| [In/Out Board](https://gist.github.com/jpreardon/d84a933bfa6e861bcfe8) | A very, very simple in/out board widget | [JP Reardon](http://jpreardon.com/) |
| [Inspirational Quotes](https://gist.github.com/mlota/85fe8c76f5fa34b51a76) | Simple widget to display a random inspirational quote | [Mel Lota](https://github.com/mlota) |
| [Instagram by Location](https://gist.github.com/mjamieson/5278790) | Displays Instagram Photos based on location | [mjamieson](https://github.com/mjamieson) |
| [Instagram User Info](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/instagram_user.rb) | Instagram User’s info: followers, following, photos| [ephigenia](https://github.com/Ephigenia) |
| [Instagram Images by User](https://gist.github.com/dyscribe/1382e3b326310214e436) | Displays recent photos taken by a selected user| [dyscribe](https://gist.github.com/dyscribe) |
| [Jenkins Build](https://gist.github.com/mavimo/6334816) | Displays Jenkins build progress | [steintore](https://github.com/steintore), [mavimo](https://github.com/mavimo)|
| [Jenkins Build History](https://gist.github.com/kalenwatermeyer/5355142ba2b09e4320da) | Displays Jenkins build status history for a number of jobs | [kalenwatermeyer](https://gist.github.com/kalenwatermeyer) |
| [Jenkins Build Status](https://gist.github.com/joepadmiraal/33e0c2a7a7b00cc2e0aa) | Displays Jenkins overall build status | [joepadmiraal](https://gist.github.com/joepadmiraal) |
| [Jenkins Build Status Traffic Light](https://github.com/servebox/jenkins_traffic_light_dashing_widget) | Displays Jenkins built status as a traffic light.  | [ServeBox](https://github.com/servebox) |
| [Jenkins Last Commit](https://gist.github.com/kalenwatermeyer/9307200) | Displays information about last SCM commit for a Jenkins job | [kalenwatermeyer](https://gist.github.com/kalenwatermeyer) |
| [Jenkins Test coverage](https://gist.github.com/akalyaev/6391422) | Displays information about test coverage of your Jenkins build | [Anton Kalyaev](https://github.com/akalyaev) |
| [JQPlot Meter for Dashing](https://gist.github.com/ilikenwf/c54cd6709a769dd53b66) | Allows use of the JQPlot meter widget. More JQPlot widgets coming soon. | [ilikenwf](https://github.com/ilikenwf) |
| [KACE K1000 Ticket Counter](https://gist.github.com/pwyliu/9633826) | Shows open ticket count for the KACE K1000 service desk | [Paul Liu](https://github.com/pwyliu) |
| [Klout Score](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/klout_score.rb) | Klout Score | [ephigenia](https://github.com/Ephigenia) |
| [KVB next trains](https://gist.github.com/bascht/6081707) | Show the next KVB Trains from a station next to you | [bascht](https://github.com/bascht) |
| [LastFM](https://github.com/craigcoles/lastfm-widget) | Display the most recently played or currently playing track | [Craig Coles](https://github.com/craigcoles/) |
| [Libraryh3lp](https://gist.github.com/visibilityspots/ae32dc897e83980e16f6) | Show the state of some libraryh3lp chat group and users | [visibilityspots](https://github.com/visibilityspots/) |
| [Librato Metrics](https://gist.github.com/mtowers/8324021) | Create a graph based on metrics reported by [Librato](https://metrics.librato.com/) | [Matt Towers](https://github.com/mtowers)
| [Line Chart](https://github.com/jorgemorgado/dashing-linechart) | Simple widget to render line charts on Dashing | [Jorge Morgado](https://github.com/jorgemorgado) |
| [LiveChat Agents](https://gist.github.com/incarnate/40b38ae3e350f71f88c5) | Displays stats about [LiveChat](http://www.livechatinc.com/) agents | [John C](https://github.com/incarnate) |
| [LiveChat Visitors](https://gist.github.com/incarnate/219f3386f4d03eb56739) | Displays stats about [LiveChat](http://www.livechatinc.com/) visitors | [John C](https://github.com/incarnate) |
| [Load Averages](https://gist.github.com/gregology/5196609) | Load Averages for *nix servers | [Gregology](https://github.com/gregology) |
| [Loggly](https://gist.github.com/benoj/5965001) | Graph log data from loggly | [Ben Flowers](https://github.com/benoj) |
| [Mailgun](https://github.com/atatus/dashing-mailgun) | Mail stats from Mailgun | [Fizer Khan](https://github.com/fizerkhan) |
| [Mandrill Mail](https://gist.github.com/dgehrett/6828656) | Mail stats from Mandrill | [dgehrett](https://gist.github.com/dgehrett) |
| [Mandrill Daily Sent Mail Count](https://gist.github.com/VanessaHenderson/58217fcddb82eee2f843) | Compares mail sent today  with mail sent yesterday | [VanessaH](https://github.com/VanessaHenderson) |
| [Memegenerator](https://gist.github.com/wildekek/f38f6184c9f82fefb200) | Display meme generator images | [wildekek](https://github.com/wildekek) |
| [MixPanel Event Total](https://gist.github.com/ilyakatz/6175747) | Display total number of events from MixPanel  | [Ilya Katz](https://github.com/ilyakatz) |
| [Music Player](https://gist.github.com/akalyaev/6397587) | Dashing widget to play music. Awesome, right?! | [Anton Kalyaev](https://github.com/akalyaev) |
| [MyWind](https://gist.github.com/simoneb/9041024) | Displays information about your Italian Wind mobile contract (SMS, voice minutes, data, ...) | [Simone Busoli] (https://github.com/simoneb) |
| [MQTT](https://gist.github.com/jmb/ac36d16a5180c3d2032a) | Dashing job to subscribe to [MQTT](http://mqtt.org) data | [jmb](https://github.com/jmb) |
| [Nagios](https://github.com/aelse/dashing-nagios) | Nagios warning and error counts | [Alexander Else] (https://github.com/aelse) |
| [Nagios-Check_MK](https://github.com/derrybarry/nagios-check_MK) | Check_MK cpu/disk data | [Barry Tracey](https://github.com/derrybarry) |
| [Nagios XI](https://github.com/jsinghsamuel/Dashing-Nagiosxi) | Display Overall and Detailed Host/Service Status | [Jayasingh Samuel] (https://github.com/jsinghsamuel/) |
| [National Rail Live Data](https://github.com/Smittey/Dashional-Rail) | Dashional Rail - Live train schedule updates from National Rail for a specified station | [Smittey](https://github.com/Smittey) |
| [Nest](https://github.com/Eric-Gonzalez/nest-dashing-widget) | Nest thermostat data | [Eric Gonzalez] (https://github.com/Eric-Gonzalez) |
| [netatmo](https://github.com/olf/dashing_netatmo) | measurements from your netatmo personal weather station | [Olf](https://github.com/olf) |
| [Newrelic](https://gist.github.com/assimovt/5181244) | Newrelic metrics | [assimovt](https://github.com/assimovt) |
| [Newrelic Insights](https://gist.github.com/jamesmoriarty/9f743c5f130e46fe497d) | Newrelic Insights Query | [jamesmoriarty](https://github.com/jamesmoriarty) |
| [News](https://gist.github.com/iainjmitchell/5271830) | Displays the latest BBC News top stories | [Iain Mitchell](https://github.com/iainjmitchell) |
| [New York Subway](https://github.com/excepttheweasel/dashing-mta) | Displays the New York subway status from the MTA | [John Barker](https://github.com/excepttheweasel) |
| [Nike+](https://github.com/danillotuhumury/nikeplus-dashing-widget) | Displays data of your last Nike+ activity | [danillotuhumury](https://github.com/danillotuhumury) |
| [Ntile](https://gist.github.com/PareidoliaX/6757706) | Takes any timestamped data feed and displays the value for the current day (or defined time period) in statistical context. | [PareidoliaX](https://gist.github.com/PareidoliaX) |
| [Number Status Service](https://gist.github.com/andrescolodrero/0ce0821fedca00d8a886) | Display Service Status and values | [andrescolodrero](https://gist.github.com/andrescolodrero) |
| [OctoPrint](https://github.com/wolfspyre/dashing-octoprint) | Display stats from [OctoPrint](http://octoprint.org) | [Wolfspyre](https://github.com/wolfspyre) |
| [OpsGenie Unacknowledged Alerts](https://gist.github.com/dragonai/83cf1aed44124ce7ac04) | Indicates whether there are any unacknowledged OpsGenie alerts | [Shehmeer Jiwani](https://github.com/dragonai) |
|  [Opsview](https://github.com/hawk554/dashing-opsview) | Displays Opsview Criticals, Warnings, Hosts Up/Down | [hawk554](https://github.com/hawk554) |
|  [OpenTSDB](https://github.com/Ulrhol/dashing_opentsdb) | Pull stats from OpenTSDB and present in dashboard widgets | [Ulrhol](https://github.com/Ulrhol) |
| [OC Transpo](https://gist.github.com/jwalton/6654439) | Display arrival times for OC Transpo Buses | [Benbria](https://github.com/benbria) |
| [PagerDuty](https://github.com/thegreenrobot/pagerduty_dashing) | Show PagerDuty incidents and on-call information | [thegreenrobot](https://github.com/thegreenrobot) |
| [PageViews](https://gist.github.com/SeanJA/4992004) | Display the Pageviews From GA | [SeanJA](https://github.com/seanja) |
| [Paris Velib](https://gist.github.com/jbfarez/8fd422d5e4e3d6614c72) | Retrieve the Bikes/Stands availability of Paris Velib service | [Jean Baptiste Farez](https://github.com/jbfarez) |
| [Performance Monitor](https://github.com/Clevero/dashing-performance-monitor) | Show some stats (RAM, CPU, Network, etc.) of your linux server in a nice looking way | [Clevero](https://github.com/Clevero)
| [Pianobar](https://gist.github.com/kylejohnson/8789893) | Display song information from Pianobar, a Pandora client | [Kyle Johnson](https://github.com/kylejohnson) |
| [Pie chart](https://gist.github.com/stevenleeg/6273841) | Show awesome pie charts with ease | [stevenleeg](https://github.com/stevenleeg) |
| [Pie Chart](https://github.com/jorgemorgado/dashing-piechart) | Simple widget to render pie charts on Dashing | [Jorge Morgado](https://github.com/jorgemorgado) |
| [Pingdom](https://gist.github.com/james/5670035) | Displays a list of Pingdom statuses | [james](https://github.com/james) |
| [Pingdom bundle](https://github.com/Edools/dashing-pingdom) | Bundle of Pingdom widgets including status and uptime | [Rafael Carvalho](https://github.com/carvalhorafael) |
| [Pingdom Uptime](https://github.com/pydubreucq/dashing-pingdom-uptime) | Displays the mean of all or part uptime probes | [pydubreucq](https://github.com/pydubreucq) |
| [Pivotal Tracker](https://gist.github.com/dirkkelly/5690677) | Pivotal Tracker Story Statuses | [dirkkelly](https://github.com/dirkkelly) |
| [Pivotal Tracker Burndown](https://gist.github.com/6194375) | Pivotal Tracker current iteration's burndown | [gaelrottier](https://github.com/gaelrottier) |
| [Pivotal Tracker Iteration](https://gist.github.com/marcus/6015881) | Pivotal Tracker Iteration Stats | [marcus](https://github.com/marcus) |
| [Pivotal Tracker Velocity](https://github.com/ParkWhiz/dashing-pivotal-velocity) | Velocity graphs for Pivotal Tracker projects. | [mstratman](https://github.com/mstratman) @ [ParkWhiz](https://github.com/ParkWhiz)
| [Polar Chart](https://github.com/jorgemorgado/dashing-polarchart) | Simple widget to render polar charts on Dashing | [Jorge Morgado](https://github.com/jorgemorgado) |
| [PRTG](https://github.com/sbaerlocher/dashing.prtg) | Shows downs, downs (acknowledgeds) and warnings from [prtg](https://www.paessler.com/prtg). | [sbaerlocher](https://github.com/sbaerlocher) |
| [Puppet Dashboard](https://gist.github.com/tolleiv/c695b22a12259f0809f8) | Puppet Dashboard port | [tolleiv](https://github.com/tolleiv) |
| [PuppetDB Stats](https://gist.github.com/bitflingr/a49981b299dff184c04a) | PuppetDB Stats | [bitflingr](https://github.com/bitflingr) |
| [PuppetDB Stats HTTPS](https://gist.github.com/pszypowicz/bc07528ed7ae79bf49aa) | PuppetDB Stats (HTTPS) | [pszypowicz](https://github.com/pszypowicz) |
| [Radar Chart](https://github.com/jorgemorgado/dashing-radarchart) | Simple widget to render radar charts on Dashing | [Jorge Morgado](https://github.com/jorgemorgado) |
| [RandomAww](https://gist.github.com/chelsea/5641535) | Display a random cute picture | [chelsea](https://github.com/chelsea) |
| [Random Reddit](https://gist.github.com/bennycwong/5ee7a3788cf219484880) | Display a random picture from subreddit | [bennycwong](https://github.com/bennycwong) |
| [Reddit](https://gist.github.com/kevinquillen/5695037) | Display top 5 posts/score/comment count per subreddit(s) of your choosing | [kevinquillen](https://gist.github.com/kevinquillen/5695037)
| [Redis](https://github.com/atatus/dashing-redis) | Display the number of connected clients and instance memory usage. | [Fizer Khan](https://github.com/fizerkhan), [Wan Qi Chen](https://github.com/wa0x6e) |
| [Redmine Ticket Counts](https://gist.github.com/jmibanez/ccfa6add0f4c359a9978) | Display and cycle through ticket counts per priority on a project in Redmine | [jmibanez](https://github.com/jmibanez) |
| [Reload](https://github.com/aelse/dashing-reload) | Periodically reload the dashboard to get around JS memory hogging | [Alexander Else](https://github.com/aelse) |
| [Remember The Milk](https://github.com/kevintuhumury/dashing-milkman) | Display your overdue tasks (or configure it to do something else) | [kevintuhumury](https://github.com/kevintuhumury) |
| [Remember The Milk](https://gist.github.com/Luzifer/11090980) | A clone of the widget from [kevintuhumury](https://github.com/kevintuhumury) using icalendar instead of milkman to access the tasks | [luzifer](https://github.com/luzifer) |
| [Remote Reload](https://gist.github.com/jwalton/6616670) | Reload your dashboard when you make changes | [Benbria](https://github.com/benbria) |
| [RescueTime usage](https://gist.github.com/gregschwartz/25b9f0d5260498e0d69a) | Show daily total time in a RescueTime productivity grade | [Greg Schwartz](https://github.com/gregschwartz) |
| [Rickshaw Graph](https://gist.github.com/jwalton/6614023) | Drop-in replacement for the built in Graph widget | [Benbria](https://github.com/benbria) |
| [Rollbar Time of Last Deploy](https://gist.github.com/dragonai/fab612ffc94403b687e5) | Displays how long ago the last deploy was according to Rollbar | [Shehmeer Jiwani](https://github.com/dragonai) |
| [RSS Feeds](https://gist.github.com/toddq/5422482) | Display multiple RSS news feeds. | [toddq](https://github.com/toddq) |
| [RSS Feeds (Updated)](https://gist.github.com/rdempsey/8a8c98848f147d6d3a1a) | Display multiple RSS news feeds. | [Robert Dempsey](https://github.com/rdempsey) |
| [Santander bikes (ex. Barclays bike) live status](https://gist.github.com/alexisrobert/cfdb32371db7a240263c) | Live status for London's Santander bikes (Barclays bike) | [Alexis Robert](https://github.com/alexisrobert) |
| [Semaphore Branch Status Monitor](https://gist.github.com/dragonai/bfa70e8e85a5f64b44aa) | Displays color-coded build statuses of all branches of a Semaphore repository | [Shehmeer Jiwani](https://github.com/dragonai) |
| [Semaphore CI](https://github.com/rastasheep/semaphore-dashing) | Display build status of project on [Semaphore CI](https://semaphoreapp.com) | [rastasheep](https://github.com/rastasheep) |
| [Semaphore Single Branch Build Status](https://gist.github.com/dragonai/14b561fd3a8a112cb558) | Displays a single branch's build status and latest commit on Semaphore | [Shehmeer Jiwani](https://github.com/dragonai) |
| [Sensu](https://github.com/mrichar1/dashing-sensu) | Display Sensu alerts | [Matthew Richardson] (https://github.com/mrichar1) |
| [Server Density](https://gist.github.com/johnwards/5697369) | Display current server density alerts | [johnwards](https://github.com/johnwards) |
| [Server Status](https://gist.github.com/willjohnson/6313986) | Display status of servers | [Will Johnson](https://github.com/willjohnson) |
| [Server Status Squares](https://gist.github.com/welsh/9588819) | Display status of servers using squares | [Welsh](https://github.com/welsh) |
| [ServiceNow Meter](https://gist.github.com/patrobinson/4f3a62c052e7952c222d) | Display number of results from a ServiceNow query | [patrobinson](https://github.com/patrobinson) |
| [Shopify Data](https://gist.github.com/myjanky/547b46be893f3cd6c62b077027cb3122) | Display number of orders or any other data| [myjanky](https://github.com/myjanky) |
| [Shoutbox](https://gist.github.com/georgeyord/3401cd33d5375bbac81d) _(Github [repo](https://github.com/georgeyord/dashing-shoutbox))_ | Shoutbox to share messages with Dahoboard viewers | [georgeyord](http://github.com/georgeyord)
| [Sidekiq](https://gist.github.com/pallan/57f778cace40fd56fb4d) | Display stats for a Sidekiq Background system | [pallan](http://github.com/pallan)
| [SirPortly tickets](https://gist.github.com/joren/6318472) | Show open tickets for a SirPortly department | [joren](http://github.com/joren)
| [Slack User Presence](https://gist.github.com/machadolab/c948672c4a6855c48a596dd4fbbb9646) | Show Slack user presence | [machadolab](https://github.com/machadolab) |
| [Slideshare User Info](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/slideshare_user.rb) | Slideshare User Info (Followers, Number of Slides)| [ephigenia](https://github.com/Ephigenia) |
| [Slide Show](https://gist.github.com/Brunas/124c8ef19f67f4ebcfff) | Slide Show with image resizing | [Brunas](https://github.com/Brunas) |
| [SNMPGraph](https://github.com/wolfspyre/dashing-snmpgraph) | Generate graphs of SNMP datasources configurable via yaml files | [Wolfspyre](https://github.com/wolfspyre) |
| [SNMP Interface Bandwidth](https://gist.github.com/radzima/5541229) | Display bandwidth utilization over time | [RAdzima](https://github.com/radzima) |
| [SNMP Interface Percentage](https://gist.github.com/drolfe/c9164655ac94a3d43e35) | Display bandwidth percentage using all ruby | [DRolfe](https://github.com/drolfe) |
| [Sonar](https://gist.github.com/EHadoux/5196209) | Display Sonar metrics | [EHadoux](https://github.com/ehadoux) |
| [Sonar Secured](https://gist.github.com/aaronkaka/8491321) | Display and configure Sonar metrics for a secured or unsecured Sonar repository. | [Aaron Kaka](https://github.com/aaronkaka) |
| [Sonos Now Playing](https://gist.github.com/crummy/6e3973695d7b8adb672f) | View Now Playing information and album art from a Sonos player | [Malcolm Crum](https://github.com/crummy) |
| [Soundcloud Listens](https://gist.github.com/pezholio/5460036) | Display Soundcloud listens. | [pezholio](https://github.com/pezholio) |
| [Sparkline](https://gist.github.com/jorgemorgado/26068a72540619a4d4ec) | Display a sparkline chart together with current value and the percentage difference (from the previous value), pretty much like the Number widget | [Jorge Morgado](https://github.com/jorgemorgado) |
| [splunk® enterprise query](https://gist.github.com/11221b6ea30a35c7cdc6) | Run blocking queries on a splunk® enterprise server. | [Antony J](https://github.com/antonyj75) |
| [Spreaker Podcast Plays](https://gist.github.com/imikerussell/e20eb4de6d60457d5899) | Displays the amount of plays on your latest Spreaker podcast episode. | [Mike Russell](https://github.com/imikerussell) |
| [Squeezebox Now Playing](https://gist.github.com/tobru/9714028) | Display currently playing song of a Squeezebox player. | [tobru](https://github.com/tobru) |
| [StackOverflow questions](https://gist.github.com/jonasrosland/55952829d9fdc855b766) | Track questions on StackOverflow | [jonasrosland](https://github.com/jonasrosland) |
| [Startup quote](https://gist.github.com/assimovt/5177583) | Daily wisdom about startups | [assimovt](https://github.com/assimovt) |
| [Stash Pull Requests](https://gist.github.com/warmfusion/5923565) | Display open pull requests for projects or specific repositories from [Stash](http://www.atlassian.com/software/stash/overview) | [warmfusion](https://github.com/warmfusion) |
| [StatusPage.io](https://github.com/warrenguy/dashing-statuspageio) | Display status of a service using the StatusPage.io status page service. e.g. Linode, New Relic, Travis CI, and many others. | [Warren Guy](https://warrenguy.me) |
| [StockTwits comments](https://gist.github.com/greedo/de40f22025532862fbe7) | Displays recent comments on your favorite stocks from [StockTwits](http://stocktwits.com/) | [greedo](https://github.com/greedo) & [michaelqlarson](https://github.com/michaelqlarson) |
| [Stripe Stats](https://github.com/willjohnson/dashing-stripe-stats) | Display number of customers and monthly revenue from Stripe. | [Will Johnson](https://github.com/willjohnson) |
| [Subway Info] (https://gist.github.com/parthibanloganathan/5873710) | Subway information like train arrival time, station, etc. for New York and other cities. | [parthibanloganathan] (https://github.com/parthibanloganathan) |
| [Table] (https://gist.github.com/nick123pig/9c7cb3030f63ad10e517) | HTML table widget | [Nick Stocchero] (https://github.com/nick123pig) |
| [TeamCity](https://github.com/DefactoSoftware/dashing-widgets/tree/master/teamcity) | Display TeamCity CI build status | [Jurre Stender](https://github.com/jurre) |
| [TeamCity Grouped](https://gist.github.com/makepanic/a87e96dfd21583b96eb3) | TeamCity CI build status with grouped output | [makepanic](https://gist.github.com/makepanic) |
| [TeamCity Grouped Extended](https://gist.github.com/jimmirra/76272c91b70ec8ee372b) | Extended TeamCity CI build status with grouped output to add username and under investigation builds. | [jimmirra](https://gist.github.com/jimmirra) |
| [TeamCity LABS](https://github.com/FizzBuzz791/TeamCity-LABS) | Extended previous TeamCity Widgets to work with latest TeamCity build. | [FizzBuzz791](https://github.com/FizzBuzz791) |
| [Teamseer widget](https://gist.github.com/SimonRininsland/e7713f72e64ceb78dd93) | Displays Teamseer Absences for the actual and next week. | [Simon Rininsland](https://gist.github.com/SimonRininsland) |
| [Testing Status](https://gist.github.com/teknologika/12c1b60acad61360ef54) | Generic test status doughnut chart | [Bruce McLeod](https://github.com/teknologika) |
| [TFL London Underground Status](https://gist.github.com/khash/8846431) | London Underground Tube Status | [Khash Sajadi](https://github.com/khash) |
| [TFS Build](https://gist.github.com/Brunas/d5b9352b839b6249e372) | TFS Build monitor | [Brunas](https://github.com/Brunas) |
| [TFS Build Queue](https://gist.github.com/Brunas/b39380801f38f15254f8) | TFS Build Queue | [Brunas](https://github.com/Brunas) |
| [Thruk nagios status](https://gist.github.com/exzz/11033725) | Nagios status with thruk front end | [Nicolas Leclercq](https://github.com/exzz) |
| [Timeline](https://github.com/aysark/dashing-timeline) | A stylish vertical/horizontal timeline to display various past/upcoming dates/events | [aysark](https://github.com/aysark) |
| [Time Since Last](https://gist.github.com/hannesfostie/5420959) | Tracks time past since the last occurrence of an event | [hannesfostie](https://github.com/hannesfostie) |
| [Traffic from TomTom](https://gist.github.com/sighmin/5628306) | Ranks drivings times of routes using dynamic traffic data | [sighmin](https://github.com/sighmin) |
| [Transilien Next Trains](https://framagit.org/tg/transilien_next_trains) | Next train departures and status for a favorite train station of Transilien (Paris main suburban railway network) | [Thomas G](https://framagit.org/tg) |
| [Travis CI](https://github.com/zendesk/dashing_travisci) | Display Travis CI build status | [Zendesk](https://github.com/zendesk) |
| [Trello](https://gist.github.com/mordonez/7091924) | Display Trello boards info | [mordonez](https://github.com/mordonez) |
| [Tumblr](https://gist.github.com/cmourizard/b4388da77dbb8530631f) | Display quote from Tumblr blog | [Cédric Mourizard](https://github.com/cmourizard) |
| [Twelve Hour Clock](https://gist.github.com/jpo/6e2f80b4812c5b9474f3) | Displays the current time as a 12-hour clock. | [jpo](https://github.com/jpo)|
| [Twitch.TV](https://gist.github.com/magicguitarist/10929545) | Add Twitch Stream to Dashboard | [magicguitarist](https://github.com/magicguitarist)|
| [Twitch now live](https://gist.github.com/thiemok/e1b452fc01bcae68f050fb48f44df93f) | Shows followed and currently live Twitch channels | [thiemok](https://github.com/thiemok) |
| [Twitter Mentions](https://gist.github.com/VanessaHenderson/9aa0823efdfc085f675d) | Scrolls through Twitter Mentions | [VanessaH](https://github.com/VanessaHenderson) |
| [Twitter Search](https://gist.github.com/jeroenbegyn/5419267) | Twitter Search with v1.1 API | [jeroenbegyn](https://github.com/jeroenbegyn) |
| [Twitter Stock comments](https://gist.github.com/greedo/957ba26575b3f5e445dc) | Displays tweets from Twitter on your favorite stocks | [greedo](https://github.com/greedo) & [michaelqlarson](https://github.com/michaelqlarson) |
| [Twitter User Info](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/twitter_user.rb) | Twitter Followers/Following/Tweet Count | [ephigenia](https://github.com/Ephigenia) |
| [UniFi Video](https://gist.github.com/tracstarr/a5648c0d36162c0d1a84) | Takes snapshots from your unifi video camera via NVR | [tracstarr](https://github.com/tracstarr) |
| [Uptime Robot](https://gist.github.com/ChrisCrewdson/0b13460565762293cab7) | Shows a list of Uptime Robot monitors |  [Chris Crewdson](https://github.com/chriscrewdson) |
| [Uptime Robot](https://github.com/sbaerlocher/dashing.uptimerobot) | Shows a list of Uptime Robot monitors |  [sbaerlocher](https://github.com/sbaerlocher) |
| [US Map](https://gist.github.com/jrunge/acd98d3d550911bdc4b5) | Displays geo points in the US |  [Josh Runge](https://github.com/jrunge) |
| [V1Dashing - VersionOne Enabled Widgets](https://github.com/mtbadgley/v1dashing) | VersionOne Enabled widgets for burndown, cumulative flow, velocity, cycle time, defects, progress, etc. | [Matt Badgley](https://github/mtbadgley) |
| [Vectra Networks](https://gist.github.com/mikemackintosh/8edc444764089391c001) | Show a table of most recent detections | [Mike Mackintosh](https://github.com/mikemackintosh) |
| [Vimeo User Info](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/vimeo_userinfo.rb) | Vimeo User contacts, albums, likes etc.| [ephigenia](https://github.com/Ephigenia) |
| [Vimeo User Videos](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/vimeo_uservideos.rb) | List Vimeo user’s videos by likes, comments or sum| [ephigenia](https://github.com/Ephigenia) |
| [Visitor Count](https://gist.github.com/mtowers/5986576) | Google Analytics visitor count (OAuth2) | [Matt Towers](https://github.com/mtowers)
| [Visitor Count (multiple sites)](https://gist.github.com/willjohnson/6232286) | Google Analytics visitor count (OAuth2) fork to support multiple sites | [Will Johnson](https://github.com/willjohnson)
| [Visitor Count Real Time](https://gist.github.com/robertboloc/9546339) | Google Analytics visitor count (OAuth2) fork to support real time | [Robert Boloc](https://github.com/robertboloc)
| [VK Group](https://gist.github.com/and7ey/6a834f517791c9aa0cb5) | VK (VKontakte) widget to display group members count  | [Andrey L](https://github.com/and7ey)
| [Weather](https://gist.github.com/davefp/4990174) | Displays weather info from Yahoo |  [David Underwood](https://github.com/davefp) |
| [Weather Widget](https://github.com/hkraji/weather-widget) | Displays weather info in colors from OpenWeatherMap | [Haris Krajina](https://github.com/hkraji) |
| [Wordpress Stats](https://gist.github.com/jonasrosland/08b5758eaa9098a81cf8) | Wordpress Stats | [jonasrosland](https://github.com/jonasrosland) |
| [World Clock](https://gist.github.com/sklise/667cc198fa30d7f7d313) | Displays the time in another time zone | [Steve Klise](https://github.com/sklise)
| [World Cup Brazil 2014](https://gist.github.com/blackjid/1efd7332c3cf59d3c3f9) | Displays the next matches for the Brazil 2014 World Cup | [blackjid](https://github.com/blackjid) @ [platanus](https://github.com/platanus) |
| [World Clock](https://gist.github.com/weilu/7688343) | Displays time at multiple locations |  [Wei Lu](https://github.com/weilu) |
| [Xebia Essentials](https://gist.github.com/amochtar/daf5ef3e437174bd6695) | Displays a random [Xebia Essentials](http://essentials.xebia.com) card| [Adé Mochtar](https://github.com/amochtar) |
| [Wunderlist](https://github.com/sbaerlocher/dashing.wunderlist) | Shows [Wunderlist](https://wunderlist.com) tasks. | [sbaerlocher](https://github.com/sbaerlocher) |
| [Xively](https://gist.github.com/jakthom/6e3b9cfdfcdb69f7b9c2) | Displays IOT data from Xively | [jakthom](https://github.com/jakthom) |
| [Yahoo Stock Quote](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/yahoo_stockquote.rb) | Yahoo Stock Quote | [ephigenia](https://github.com/Ephigenia) |
| [Yahoo Weather](https://github.com/danillotuhumury/klimato-dashing-widget) | Displays weather information using Climacons. | [danillotuhumury](https://github.com/danillotuhumury) |
| [Youtube Channel Stats](https://gist.github.com/nicknmejia/0651bb456dd3e62042ee) | Super simple dashing widget for displaying your youtube channels stats| [nicknmejia](https://github.com/nicknmejia) |
| [Youtube Video Stats](https://github.com/foobugs/foobugs-dashboard/blob/master/jobs/youtube_video.rb) | Youtube Video Stats | [ephigenia](https://github.com/Ephigenia) |
| [Youtube Player](https://gist.github.com/akalyaev/e0f95d603a2f83a0c73e) | Dashing widget to play video from Youtube | [Anton Kalyaev](https://github.com/akalyaev) |
| [Youtube Playlist Stats](https://gist.github.com/jonasrosland/106829a06da0704a11fa) | Youtube Playlist Stats | [jonasrosland](https://github.com/jonasrosland) |
| [Zabbix Trigger](https://gist.github.com/chojayr/7401426) | Show number of zabbix triggers | [chojayr](https://github.com/chojayr) |
| [Zendesk View Counts](https://gist.github.com/Skeyelab/9bc044bc7f68aa365157) | Show counts from any number of Zendesk views | [Eric Dahl](https://github.com/Skeyelab) |
| [Zenoss](https://github.com/lbischof/dashing-zenoss) | Shows Zenoss events | [lbischof](https://github.com/lbischof) |
| [Scoverage](https://gist.github.com/Pritesh-Patel/b94cf564c8fcba43b013) | Show scoverage percentage from jenkins | [Pritesh Patel](https://gist.github.com/Pritesh-Patel)
