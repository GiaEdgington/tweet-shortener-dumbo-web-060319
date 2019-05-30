# Write your code here.
def dictionary_hash 
    words_dictionary = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }   
end

def word_substituter(tweet)
    tweet_phrase = tweet.split(' ')
    key_words = dictionary_hash.keys
    
    tweet_phrase.each do |tweet_word|
        if key_words.include?(tweet_word.downcase)
            tweet_word.replace(dictionary_hash[tweet_word.downcase])
        end
    end
    tweet_phrase.join(" ")
end

def bulk_tweet_shortener(tweets)
 
    tweets.each do |tweet|
       puts word_substituter(tweet)
    end

end

def selective_tweet_shortener(tweet)
        long_tweet = tweet.split('')
        if long_tweet.length > 140
            word_substituter(tweet)
        else
            tweet
        end 
end 

def shortened_tweet_truncator(tweet)

   my_tweet = word_substituter(tweet)
   long_tweet = my_tweet.split('')
    if long_tweet.length > 140
        long_tweet.take(140)
    else
        tweet
    end 
end