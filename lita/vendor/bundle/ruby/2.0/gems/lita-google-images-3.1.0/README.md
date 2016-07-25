# lita-google-images

[![Build Status](https://travis-ci.org/jimmycuadra/lita-google-images.png?branch=master)](https://travis-ci.org/jimmycuadra/lita-google-images)
[![Code Climate](https://codeclimate.com/github/jimmycuadra/lita-google-images.png)](https://codeclimate.com/github/jimmycuadra/lita-google-images)
[![Coverage Status](https://coveralls.io/repos/jimmycuadra/lita-google-images/badge.png)](https://coveralls.io/r/jimmycuadra/lita-google-images)

**lita-google-images** is a handler for [Lita](https://github.com/jimmycuadra/lita) that searches Google Images for images matching users' queries, and replies with links to them.

## Installation

Add lita-google-images to your Lita instance's Gemfile:

``` ruby
gem "lita-google-images"
```

## Configuration

### Required attributes

```
* `google_cse_id` (String) - ID of the Google Custom Search account to use.
* `google_cse_key` (String) - API key for the Google Custom Search account.
```

### Optional attributes

* `safe_search` (String, Symbol) - The safe search setting to use when querying for images. Possible values are `:high`, `:medium`, and `:off`. Default: `:high`.

### Example

```
Lita.configure do |config|
  config.handlers.google_images.safe_search = :off
end
```

## Usage

The following are all equivalent ways of asking Lita to search for an image of "carl the pug":

```
Lita: image carl the pug
Lita: image me carl the pug
Lita: img carl the pug
Lita: img me carl the pug
```

The following are all equivalent ways of askign Lita to search for an animated GIF of "carl the pug":

```
Lita: animate carl the pug
Lita: animate me carl the pug
Lita: gif carl the pug
Lita: gif me carl the pug
```

The second form ("verb me") is to ease the transition for people coming from [Hubot](http://hubot.github.com/).

## License

[MIT](http://opensource.org/licenses/MIT)
