package ai.onnxruntime;

import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class OrtHardwareDevice {
    private final int deviceId;
    private final Map<String, String> metadata;
    private final long nativeHandle;
    private final OrtHardwareDeviceType type;
    private final String vendor;
    private final int vendorId;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum OrtHardwareDeviceType {
        CPU(0),
        GPU(1),
        NPU(2);

        private static final Logger logger = Logger.getLogger(OrtHardwareDeviceType.class.getName());
        private static final OrtHardwareDeviceType[] values = new OrtHardwareDeviceType[3];
        private final int value;

        static {
            for (OrtHardwareDeviceType ortHardwareDeviceType : values()) {
                values[ortHardwareDeviceType.value] = ortHardwareDeviceType;
            }
        }

        OrtHardwareDeviceType(int i10) {
            this.value = i10;
        }

        public static OrtHardwareDeviceType mapFromInt(int i10) {
            if (i10 >= 0) {
                OrtHardwareDeviceType[] ortHardwareDeviceTypeArr = values;
                if (i10 < ortHardwareDeviceTypeArr.length) {
                    return ortHardwareDeviceTypeArr[i10];
                }
            }
            logger.warning("Unknown device type '" + i10 + "' setting to CPU");
            return CPU;
        }

        public int getValue() {
            return this.value;
        }
    }

    public OrtHardwareDevice(long j10) {
        this.nativeHandle = j10;
        this.type = OrtHardwareDeviceType.mapFromInt(getDeviceType(OnnxRuntime.ortApiHandle, j10));
        this.vendorId = getVendorId(OnnxRuntime.ortApiHandle, j10);
        this.vendor = getVendor(OnnxRuntime.ortApiHandle, j10);
        this.deviceId = getDeviceId(OnnxRuntime.ortApiHandle, j10);
        this.metadata = OrtUtil.convertToMap(getMetadata(OnnxRuntime.ortApiHandle, j10));
    }

    private static native int getDeviceId(long j10, long j11);

    private static native int getDeviceType(long j10, long j11);

    private static native String[][] getMetadata(long j10, long j11);

    private static native String getVendor(long j10, long j11);

    private static native int getVendorId(long j10, long j11);

    public int getDeviceId() {
        return this.deviceId;
    }

    public Map<String, String> getMetadata() {
        return this.metadata;
    }

    public long getNativeHandle() {
        return this.nativeHandle;
    }

    public OrtHardwareDeviceType getType() {
        return this.type;
    }

    public String getVendor() {
        return this.vendor;
    }

    public int getVendorId() {
        return this.vendorId;
    }

    public String toString() {
        return "OrtHardwareDevice{type=" + this.type + ", vendorId=" + this.vendorId + ", vendor='" + this.vendor + "', deviceId=" + this.deviceId + ", metadata=" + this.metadata + '}';
    }
}
