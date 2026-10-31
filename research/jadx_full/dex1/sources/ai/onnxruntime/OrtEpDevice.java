package ai.onnxruntime;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtEpDevice {
    private final OrtHardwareDevice device;
    private final Map<String, String> epMetadata;
    private final String epName;
    private final Map<String, String> epOptions;
    private final String epVendor;
    private final long nativeHandle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtEpDevice(long j9) {
        this.nativeHandle = j9;
        this.epName = getEpName(OnnxRuntime.ortApiHandle, j9);
        this.epVendor = getEpVendor(OnnxRuntime.ortApiHandle, j9);
        this.epMetadata = OrtUtil.convertToMap(getEpMetadata(OnnxRuntime.ortApiHandle, j9));
        this.epOptions = OrtUtil.convertToMap(getEpOptions(OnnxRuntime.ortApiHandle, j9));
        this.device = new OrtHardwareDevice(getDeviceHandle(OnnxRuntime.ortApiHandle, j9));
    }

    private static native long getDeviceHandle(long j9, long j10);

    private static native String[][] getEpMetadata(long j9, long j10);

    private static native String getEpName(long j9, long j10);

    private static native String[][] getEpOptions(long j9, long j10);

    private static native String getEpVendor(long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtHardwareDevice getDevice() {
        return this.device;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, String> getEpMetadata() {
        return this.epMetadata;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getEpName() {
        return this.epName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, String> getEpOptions() {
        return this.epOptions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getEpVendor() {
        return this.epVendor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNativeHandle() {
        return this.nativeHandle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "OrtEpDevice{epName='" + this.epName + "', epVendor='" + this.epVendor + "', epMetadata=" + this.epMetadata + ", epOptions=" + this.epOptions + ", device=" + this.device + '}';
    }
}
