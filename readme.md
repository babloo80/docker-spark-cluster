# docker-spark-cluster
This repository provides a quick way to deploy a 2 node apache spark cluster for development purposes.

## Building Apache Spark from scratch.
Instead of OOTB binaries, building custom binaries for Apache Spark is generally useful as there exists more than couple of variable parameters.

### Step 1: Get Spark Repo
```
git clone git@github.com:apache/spark.git
```

### Step 2: Check out the required officially release tag.

```
git checkout tags/v2.4.4
```
 
### Step 3: Configure the env to make a custom build of Spark
```
export MAVEN_OPTS="-Xmx2g -XX:ReservedCodeCacheSize=512m"
./dev/change-scala-version.sh 2.12
./build/mvn -Pscala-2.12 clean
```

For more info refer: https://spark.apache.org/docs/latest/building-spark.html

### Step 4: Run the build.
Please note, this does take a while.

```
./dev/make-distribution.sh --name custom --pip --tgz -Phadoop-2.7 -Pscala-2.12
```

### Step 5: The output file should look like below. 
Output: spark-2.4.4-bin-custom.tgz
 
Instead of having the docker base image use an official binary. The above binary can be used for development.
As a useful note, the above binary is built for `Scala 2.12` as the official image is built for `Scala 2.11` only. 
