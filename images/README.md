# OpenAirInterface Image Builder

Since OAI only provides Dockerfiles which depend on the RedHat Linux OS, we need new OAI Dockerfiles to be able to run without dependencies. This directoy has multiple Dockerfiles. When we want to build all of them, easily we can execute the `build-all.sh` file like below:

```
$ ./build-all.sh
```

Once all build processes are finished, let us check the status with the below command:
```
$ docker images | grep oai
oai-nrue                                          latest                  b96d36795a9f        26 seconds ago      7.63GB
oai-gnb                                           latest                  48b9db2c3b9a        16 minutes ago      9.05GB
oai-ue                                            latest                  b31bc92ce57f        23 minutes ago      8GB
oai-enb                                           latest                  ff959f1c9874        30 minutes ago      8.72GB
oai-base                                          latest                  af976dfe3ce9        37 minutes ago      4.3GB
```

If you can see the result above, we are good to go.

*NOTE*: When you run those images for your purposes, should use the `Host Network` option. Enjoy!
