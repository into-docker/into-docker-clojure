# into-docker-clojure

[![](https://img.shields.io/docker/v/intodocker/clojure?sort=semver)](https://hub.docker.com/r/intodocker/clojure)
[![](https://img.shields.io/docker/image-size/intodocker/clojure?sort=semver)](https://hub.docker.com/r/intodocker/clojure)

This is an [into-docker][into] builder image for Clojure applications relying on
[Leiningen][lein].

[into]: https://github.com/into-docker/into-docker
[lein]: https://leiningen.org/

## Usage

Run the following in the root directory of your Clojure project:

```sh
into build -t <repository>:<tag> intodocker/clojure .
```

## Notes

Make sure your project's `uberjar` task creates its output at
`target/*-standalone.jar` since this is where the builder image will expect it.

## License

```
MIT License

Copyright (c) 2020-2022 Yannick Scherer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
