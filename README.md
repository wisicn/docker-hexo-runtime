## Wisicn Hexo Runtime docker

This is the Dockerfile for the docker image wisicn/hexo-runtime.

This Dockerfile is forked from https://github.com/sunocean/hexo-toolbox-dockerfile


Usage: see run_host.sh to see how to create a container from this image.

Notes: use -v to specific your hexo workspace in your host, then run the hexo commands inside the docker container.

Step by step:

1. create the docker container by run_host.sh in your host

2. inside the docker container, ssh-keygen, then upload your publick key to Github repository.

3. inside the docker container, run these command to change your git global config.
 	 
   ```
   git config --global user.email "you@example.com"
   git config --global user.name "Your Name"
  ```

4. inside the doker container, cd /hexo. it will be better to create a sub directory under /hexo, such as foobar.github.io, to serve mutiple sites in case of.

5. cd /hexo/foobar.github.io and run these hexo commands:
  
  ```
     hexo init
     npm install
     npm install hexo-deployer-git --save
  ```

6. modify your _config.yml and theme/bar/_config.yml

7. that's all, done 
