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
aylien = new aylien.aylien( applicationId = 'xxx', applicationKey = 'xxx' );

entities = aylien.entities( url = 'http://bit.ly/intb2018' );

writeDump( entities );
```

## Reference Manual

#### `entities( string text = '', string url = '', string language )`
Extracts different types of notable entities from a document. You must provide either the `text` or `url` argument.

# Questions
For questions that aren't about bugs, feel free to hit me up on the [CFML Slack Channel](http://cfml-slack.herokuapp.com); I'm @mjclemente. You'll likely get a much faster response than creating an issue here.

# Contributing
:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

Before putting the work into creating a PR, I'd appreciate it if you opened an issue. That way we can discuss the best way to implement changes/features, before work is done.

Changes should be submitted as Pull Requests on the `develop` branch.
