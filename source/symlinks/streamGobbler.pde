class StreamGobbler extends Thread {
  InputStream is;
  StreamGobbler(InputStream is) { 
    this.is = is;
  }
  public void run() {
    try (BufferedReader br = new BufferedReader(new InputStreamReader(is))) {
      while (br.readLine() != null);
    } catch (IOException e) {}
  }
}
