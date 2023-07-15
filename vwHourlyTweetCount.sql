with base as(
  SELECT date(tweet_created) as tweetdate,
      time(tweet_created) as tweettime,
      time_trunc(time(tweet_created), hour) as tweethour,
      extract(hour from tweet_created),
      case
      when extract(minute from tweet_created) > 30 then extract(hour from tweet_created) + 1
      else extract(hour from tweet_created)
      end as hoour,
      tweet_text
FROM `dataverse-dami.twitter_new_year_resolutions_project.resolutions` 
order by 2)

select hoour, count(tweet_text) as tweet_text_count
from base
group by hoour
order by tweet_text_count desc
