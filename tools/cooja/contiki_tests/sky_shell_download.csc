<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>My simulation</title>
    <delaytime>-2147483648</delaytime>
    <randomseed>generated</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      se.sics.cooja.radiomediums.UDGM
      <transmitting_range>100.0</transmitting_range>
      <interference_range>100.0</interference_range>
      <success_ratio_tx>0.95</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      se.sics.cooja.mspmote.SkyMoteType
      <identifier>sky1</identifier>
      <description>Contiki shell with download command</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/sky-shell/sky-checkpoint.c</source>
      <commands EXPORT="discard">make sky-checkpoint.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/sky-shell/sky-checkpoint.sky</firmware>
      <moteinterface>se.sics.cooja.interfaces.Position</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyByteRadio</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>-16.136777727943556</x>
        <y>85.85963282955879</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>1</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspSerial
        <history>l~;asd~;~K~;download 2.0 file25.txt | write file26.txt | null~;ls~;~K~;download 2.0 file25.txt | write file26.txt | null~;~K~;download 2.0 file25.txt | write file26.txt~;~K~;download 2.0 file25.txt | write file26.txt~;~K~;read file26.txt~;download 2.0 file25.txt | write file26.txt~;~K~;download 2.0 file25.txt | write file26.txt~;~K~;download 2.0 file25.txt | write file26.txt~;a~;~K~;download 2.0 file25.txt | write file26.txt~;~K~;download 2.0 file23.txt | write file26.txt~;download 2.0 file25.txt | write file26.txt~;~K~;download 2.0 file25.txt | write file26.txt~;download 2.0 file25.txt~;download 2.0 file27.txt~;ls~;read file30.txt~;read file30.txt 0 13~;read file30.txt 0 12~;</history>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>11.712359274594053</x>
        <y>84.42239042889724</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>2</id>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspSerial
        <history>ls~;read file25.txt~;</history>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    se.sics.cooja.plugins.SimControl
    <width>268</width>
    <z>2</z>
    <height>201</height>
    <location_x>0</location_x>
    <location_y>1</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.MoteInterfaceViewer
    <mote_arg>0</mote_arg>
    <plugin_config>
      <interface>Serial port</interface>
      <scrollpos>0,0</scrollpos>
    </plugin_config>
    <width>378</width>
    <z>1</z>
    <height>361</height>
    <location_x>2</location_x>
    <location_y>201</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.MoteInterfaceViewer
    <mote_arg>1</mote_arg>
    <plugin_config>
      <interface>Serial port</interface>
      <scrollpos>0,0</scrollpos>
    </plugin_config>
    <width>395</width>
    <z>3</z>
    <height>361</height>
    <location_x>379</location_x>
    <location_y>201</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.Visualizer
    <plugin_config>
      <skin>se.sics.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.AddressVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.LogVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.LEDVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.GridVisualizerSkin</skin>
      <viewport>3.7763262850104686 0.0 0.0 3.7763262850104686 110.98456498740039 -253.59028307494597</viewport>
    </plugin_config>
    <width>221</width>
    <z>7</z>
    <height>200</height>
    <location_x>269</location_x>
    <location_y>1</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>TIMEOUT(350000, log.log("last msg: " + msg + "\n"));
DELAY = 10000;

/* Wait for nodes to boot */
GENERATE_MSG(5000, "continue");
YIELD_THEN_WAIT_UNTIL(msg.equals("continue"));
mote1 = sim.getMoteWithID(1);
mote2 = sim.getMoteWithID(2);

/* Generate initial file */
fileID = 10;
log.log("Generating initial file at mote 1\n");
command = "echo *mote1data" + fileID + " | write file" + fileID + ".txt";
log.log("mote1&gt; " + command + "\n");
write(mote1, command);
YIELD_THEN_WAIT_UNTIL(id == 1 &amp;&amp; msg.contains("Contiki&gt;"));

/* Download and append files */
while (fileID &lt; 30) {
  /* Mote 1 -&gt; Mote 2: conf */
  srcFile = "file" + fileID + ".txt";
  fileID++;
  dstFile = "file" + fileID + ".txt";

  /* Mote 1 -&gt; Mote 2: download */
  log.log("\nDownloading from mote 1 to mote 2\n");
  command = "download 1.0 " + srcFile + " | write " + dstFile + " | null";
  log.log("mote2&gt; " + command + "\n");
  write(mote2, command);
  YIELD_THEN_WAIT_UNTIL(id == 2 &amp;&amp; msg.contains("Contiki&gt;"));

  /* Mote 1 -&gt; Mote 2: echo download */
  command = "echo downloaded " + srcFile + "@1.0 -&gt; " + dstFile;
  log.log("mote2&gt; " + command + "\n");
  write(mote2, command);
  YIELD_THEN_WAIT_UNTIL(id == 2 &amp;&amp; msg.contains("Contiki&gt;"));

  /* Mote 2: append */
  log.log("Appending to file at mote 2\n");
  command = "echo *mote2data" + fileID + " | append " + dstFile + " | null";
  log.log("mote2&gt; " + command + "\n");
  write(mote2, command);
  YIELD_THEN_WAIT_UNTIL(id == 2 &amp;&amp; msg.contains("Contiki&gt;"));

  /* Mote 2: echo append */
  command = "echo appended to " + dstFile;
  log.log("mote2&gt; " + command + "\n");
  write(mote2, command);
  YIELD_THEN_WAIT_UNTIL(id == 2 &amp;&amp; msg.contains("Contiki&gt;"));


  /* Delay */
  GENERATE_MSG(DELAY, "continue");
  YIELD_THEN_WAIT_UNTIL(msg.equals("continue"));


  /* Mote 2 -&gt; Mote 1: conf */
  srcFile = "file" + fileID + ".txt";
  fileID++;
  dstFile = "file" + fileID + ".txt";

  /* Mote 2 -&gt; Mote 1: download */
  log.log("\nDownloading from mote 2 to mote 1\n");
  command = "download 2.0 " + srcFile + " | write " + dstFile + " | null";
  log.log("mote1&gt; " + command + "\n");
  write(mote1, command);
  YIELD_THEN_WAIT_UNTIL(id == 1 &amp;&amp; msg.contains("Contiki&gt;"));

  /* Mote 2 -&gt; Mote 1: echo download */
  command = "echo downloaded " + srcFile + "@2.0 -&gt; " + dstFile;
  log.log("mote1&gt; " + command + "\n");
  write(mote1, command);
  YIELD_THEN_WAIT_UNTIL(id == 1 &amp;&amp; msg.contains("Contiki&gt;"));

  /* Mote 1: append */
  log.log("Appending to file at mote 1\n");
  command = "echo *mote1data" + fileID + " | append " + dstFile + " | null";
  log.log("mote1&gt; " + command + "\n");
  write(mote1, command);
  YIELD_THEN_WAIT_UNTIL(id == 1 &amp;&amp; msg.contains("Contiki&gt;"));

  /* Mote 1: echo append */
  command = "echo appended to " + dstFile;
  log.log("mote1&gt; " + command + "\n");
  write(mote1, command);
  YIELD_THEN_WAIT_UNTIL(id == 1 &amp;&amp; msg.contains("Contiki&gt;"));


  /* Delay */
  GENERATE_MSG(DELAY, "continue");
  YIELD_THEN_WAIT_UNTIL(msg.equals("continue"));
}

/* List files, verify contents */
log.log("Locating file30.txt on mote 1\n");
write(mote1, "ls");
YIELD_THEN_WAIT_UNTIL(id == 1 &amp;&amp; msg.contains("file30.txt"));
if (!msg.contains("252 ")) {
  log.log("Bad file size, should be 252 bytes: " + msg + "\n");
  log.testFailed();
}
YIELD_THEN_WAIT_UNTIL(id == 1 &amp;&amp; msg.contains("Contiki&gt;"));

/* Wait 3 seconds (3000ms) */
GENERATE_MSG(3000, "continue");
YIELD_THEN_WAIT_UNTIL(msg.equals("continue"));

fileID = 10;
command = "read file30.txt 0 12";
log.log("mote1&gt; " + command + "\n");
write(mote1, command);
while (fileID &lt; 30) {
  YIELD_THEN_WAIT_UNTIL(msg.contains("mote1data" + fileID));
  fileID++;
  log.log("&gt; " + msg + "\n");
  YIELD_THEN_WAIT_UNTIL(msg.contains("mote2data" + fileID));
  fileID++;
  log.log("&gt; " + msg + "\n");
}

log.log("Test finished at time: " + mote.getSimulation().getSimulationTime() + "\n");

log.testOK(); /* Report test success and quit */</script>
      <active>true</active>
    </plugin_config>
    <width>506</width>
    <z>0</z>
    <height>689</height>
    <location_x>774</location_x>
    <location_y>-1</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.TimeLine
    <plugin_config>
      <mote>0</mote>
      <mote>1</mote>
      <showLEDs />
      <split>1</split>
      <zoomfactor>22313.016014842982</zoomfactor>
    </plugin_config>
    <width>772</width>
    <z>5</z>
    <height>125</height>
    <location_x>3</location_x>
    <location_y>562</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.LogListener
    <plugin_config>
      <filter />
      <coloring />
    </plugin_config>
    <width>1279</width>
    <z>4</z>
    <height>287</height>
    <location_x>1</location_x>
    <location_y>686</location_y>
  </plugin>
  <plugin>
    PowerTracker
    <width>287</width>
    <z>6</z>
    <height>199</height>
    <location_x>490</location_x>
    <location_y>2</location_y>
  </plugin>
</simconf>

