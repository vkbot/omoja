package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtEnvironment$OrtEnvCloser implements Runnable {
    private final long apiHandle;
    private final long nativeHandle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtEnvironment$OrtEnvCloser(long j9, long j10) {
        this.apiHandle = j9;
        this.nativeHandle = j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        try {
            OrtEnvironment.b(this.apiHandle, this.nativeHandle);
        } catch (OrtException e) {
            System.err.println("Error closing OrtEnvironment, " + e);
        }
    }
}
