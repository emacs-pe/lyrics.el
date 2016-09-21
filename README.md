# lyrics - Show lyrics

*Author:* Mario Rodas <marsam@users.noreply.github.com><br>
*Version:* 0.0.1<br>

`lyrics.el` interface to download and display songs lyrics.

### Usage

Add `lyrics.el` somewhere in your `load-path`

    M-x lyrics

### Troubleshooting

+ `musixmatch` backend shows a incomplete lyrics

  MusixMatch filters requests with an unknown User-Agent header.  Be sure to
  check that `url-privacy-level` is not set to "'paranoid".


---
Converted from `lyrics.el` by [*el2markdown*](https://github.com/Lindydancer/el2markdown).
