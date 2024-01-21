package me.littlecontrol.hdfs;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.junit.Test;

public class HdfsClientTest {
  @Test
  public void testTestmkdir() throws URISyntaxException, IOException, InterruptedException {
    URI uri = new URI("hdfs://arch0:8020");
    Configuration configuration = new Configuration();
    String user = "root";
    FileSystem fileSystem = FileSystem.get(uri, configuration, user);

    fileSystem.mkdirs(new Path("/little/control"));
    fileSystem.close();
  }
}
