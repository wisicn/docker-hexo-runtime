#!/bin/bash
# from https://github.com/sunocean/hexo-toolbox-dockerfile
docker run -i -t --name=hexo -p 4088:4000 -v /your/path/to/hexo-workspace:/hexo wisicn/hexo-runtime
