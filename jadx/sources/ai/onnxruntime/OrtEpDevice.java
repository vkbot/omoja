package ai.onnxruntime;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class OrtEpDevice {
    private final OrtHardwareDevice device;
    private final Map<String, String> epMetadata;
    private final String epName;
    private final Map<String, String> epOptions;
    private final String epVendor;
    private final long nativeHandle;

    public OrtEpDevice(long j10) {
        this.nativeHandle = j10;
        this.epName = getEpName(OnnxRuntime.ortApiHandle, j10);
        this.epVendor = getEpVendor(OnnxRuntime.ortApiHandle, j10);
        this.epMetadata = OrtUtil.convertToMap(getEpMetadata(OnnxRuntime.ortApiHandle, j10));
        this.epOptions = OrtUtil.convertToMap(getEpOptions(OnnxRuntime.ortApiHandle, j10));
        this.device = new OrtHardwareDevice(getDeviceHandle(OnnxRuntime.ortApiHandle, j10));
    }

    private static native long getDeviceHandle(long j10, long j11);

    private static native String[][] getEpMetadata(long j10, long j11);

    private static native String getEpName(long j10, long j11);

    private static native String[][] getEpOptions(long j10, long j11);

    private static native String getEpVendor(long j10, long j11);

    public OrtHardwareDevice getDevice() {
        return this.device;
    }

    public Map<String, String> getEpMetadata() {
        return this.epMetadata;
    }

    public String getEpName() {
        return this.epName;
    }

    public Map<String, String> getEpOptions() {
        return this.epOptions;
    }

    public String getEpVendor() {
        return this.epVendor;
    }

    public long getNativeHandle() {
        return this.nativeHandle;
    }

    public String toString() {
        return "OrtEpDevice{epName='" + this.epName + "', epVendor='" + this.epVendor + "', epMetadata=" + this.epMetadata + ", epOptions=" + this.epOptions + ", device=" + this.device + '}';
    }
}
