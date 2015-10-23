void refreshTweets()
{
    while (true)
    {
        getNewTweets();

        println("Updated Tweets");
        println("waiting 10 seconds");

        delay(10000);
    }
}