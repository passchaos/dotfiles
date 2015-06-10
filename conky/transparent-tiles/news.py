import feedparser
# Google News:
#rss_url = "http://news.google.com/?output=rss"
# Google Notícias:
rss_url = "http://news.google.com/news?pz=1&cf=all&ned=pt-BR_br&hl=pt-BR&output=rss"
feed = feedparser.parse( rss_url )
count =  len(feed['entries'])
for i in range(0, count):
	if (i>=10):break
	print('{1}'.format(' ', feed.entries[i].title[0:100])) # Use .encode('utf-8') if necessary.
