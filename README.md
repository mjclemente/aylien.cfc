# ayliencfc
A CFML wrapper for the [Aylien API](http://docs.aylien.com/textapi/#getting-started).
Access Aylien's Natural Language Processing (NLP) API to extract meaning and insight from textual content.

This is a very early stage API wrapper. *Feel free to use the issue tracker to report bugs or suggest improvements!*

### Acknowledgements

This project borrows heavily from the API frameworks built by [jcberquist](https://github.com/jcberquist), such as [xero-cfml](https://github.com/jcberquist/xero-cfml) and [aws-cfml](https://github.com/jcberquist/aws-cfml). Because it draws on those projects, it is also licensed under the terms of the MIT license.

## Table of Contents

- [Quick Start](#quick-start)
- [`ayliencfc` Reference Manual](#reference-manual)
- [Questions](#questions)
- [Contributing](#contributing)

## Quick Start
Let's analyze some text! Here's how to extract entities:

```cfc
aylien = new path.to.aylien( applicationId = 'xxx', applicationKey = 'xxx' );

entities = aylien.entities( url = 'http://bit.ly/intb2018' );

writeDump( entities );
```

## Reference Manual

#### `sentiment( string text = '', string url = '', string language, string mode )`
Determines the tone of a piece of text such as a tweet, a review or an article, and for short text, whether it is subjective or objective. You must provide either the `text` or `url` argument. Be sure to use the appropriate mode parameter based on your input text: tweet for short text such as social media updates and document for longer text such as a review or an article. The default `mode` is _tweet_.

#### `entities( string text = '', string url = '', string language )`
Extracts named entities (people, organizations and locations) and values (URLs, emails, telephone numbers, currency amounts and percentages) from a document. You must provide either the `text` or `url` argument.

#### `concepts( string text = '', string url = '', string language )`
Extracts different types of notable entities mentioned in a document, disambiguates and cross link them to DBPedia and Linked Data entities, along with their semantic types (including DBPedia and schema.org). You must provide either the `text` or `url` argument.

#### `summarize( string url = '', string title = '', string text = '', numeric sentences_number, numeric sentences_percentage, string language )`
Provides an easy way of summarizing a document such as a news article or blog post into a few key sentences. You can specify the length of the summary via the `sentences_number` or `sentences_percentage` parameters. If not summary length is provided, `sentences_number` defaults to 5.

#### `hashtags( string text = '', string url = '', string language )`
Generates a list of relevant hashtags from a piece of content.


# Questions
For questions that aren't about bugs, feel free to hit me up on the [CFML Slack Channel](http://cfml-slack.herokuapp.com); I'm @mjclemente. You'll likely get a much faster response than creating an issue here.

# Contributing
:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

Before putting the work into creating a PR, I'd appreciate it if you opened an issue. That way we can discuss the best way to implement changes/features, before work is done.

Changes should be submitted as Pull Requests on the `develop` branch.
