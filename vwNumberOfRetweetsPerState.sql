SELECT tweet_state,
       count(tweet_text) number_of_tweets 
FROM `dataverse-dami.twitter_new_year_resolutions_project.resolutions`
GROUP BY 1
