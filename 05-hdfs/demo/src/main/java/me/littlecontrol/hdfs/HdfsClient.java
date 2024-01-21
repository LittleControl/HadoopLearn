package me.littlecontrol.hdfs;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.junit.Test;

public class HdfsClient {
  @Test
  public void testmkdir() throws URISyntaxException, IOException {
    URI uri = new URI("hdfs://arch0:8020");
    Configuration configuration = new Configuration();
    FileSystem fileSystem = FileSystem.get(uri, configuration);

    fileSystem.mkdirs(new Path("/little/control"));
    fileSystem.close();
  }
}
