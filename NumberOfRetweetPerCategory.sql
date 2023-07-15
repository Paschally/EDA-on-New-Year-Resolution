SELECT tweet_category,
      sum(retweet_count) as number
FROM `dataverse-dami.twitter_new_year_resolutions_project.resolutions` 
GROUP BY tweet_category
