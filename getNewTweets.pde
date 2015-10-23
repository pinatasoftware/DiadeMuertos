void getNewTweets()
{
    try
    {
        Query query = new Query(searchString);

        QueryResult result = twitter.search(query);

        tweets = result.getTweets();
    }
    catch (TwitterException te)
    {
        System.out.println("Failed to search tweets: " + te.getMessage());
        System.exit(-1);
    }
}