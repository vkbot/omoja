package ai.onnxruntime;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtHardwareDevice {
    private final int deviceId;
    private final Map<String, String> metadata;
    private final long nativeHandle;
    private final OrtHardwareDevice$OrtHardwareDeviceType type;
    private final String vendor;
    private final int vendorId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtHardwareDevice(long j9) {
        this.nativeHandle = j9;
        this.type = OrtHardwareDevice$OrtHardwareDeviceType.mapFromInt(getDeviceType(OnnxRuntime.ortApiHandle, j9));
        this.vendorId = getVendorId(OnnxRuntime.ortApiHandle, j9);
        this.vendor = getVendor(OnnxRuntime.ortApiHandle, j9);
        this.deviceId = getDeviceId(OnnxRuntime.ortApiHandle, j9);
        this.metadata = OrtUtil.convertToMap(getMetadata(OnnxRuntime.ortApiHandle, j9));
    }

    private static native int getDeviceId(long j9, long j10);

    private static native int getDeviceType(long j9, long j10);

    private static native String[][] getMetadata(long j9, long j10);

    private static native String getVendor(long j9, long j10);

    private static native int getVendorId(long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDeviceId() {
        return this.deviceId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, String> getMetadata() {
        return this.metadata;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNativeHandle() {
        return this.nativeHandle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtHardwareDevice$OrtHardwareDeviceType getType() {
        return this.type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getVendor() {
        return this.vendor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVendorId() {
        return this.vendorId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "OrtHardwareDevice{type=" + this.type + ", vendorId=" + this.vendorId + ", vendor='" + this.vendor + "', deviceId=" + this.deviceId + ", metadata=" + this.metadata + '}';
    }
}
