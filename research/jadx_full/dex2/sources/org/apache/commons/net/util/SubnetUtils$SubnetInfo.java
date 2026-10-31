package org.apache.commons.net.util;

import j1.i;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class SubnetUtils$SubnetInfo {
    private static final long UNSIGNED_INT_MASK = 4294967295L;
    final /* synthetic */ SubnetUtils this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SubnetUtils$SubnetInfo(SubnetUtils subnetUtils) {
        this.this$0 = subnetUtils;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(SubnetUtils$SubnetInfo subnetUtils$SubnetInfo) {
        return subnetUtils$SubnetInfo.low();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(SubnetUtils$SubnetInfo subnetUtils$SubnetInfo) {
        return subnetUtils$SubnetInfo.high();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long broadcastLong() {
        return ((long) SubnetUtils.access$600(this.this$0)) & UNSIGNED_INT_MASK;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int high() {
        if (this.this$0.isInclusiveHostCount()) {
            return SubnetUtils.access$600(this.this$0);
        }
        if (broadcastLong() - networkLong() > 1) {
            return SubnetUtils.access$600(this.this$0) - 1;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int low() {
        if (this.this$0.isInclusiveHostCount()) {
            return SubnetUtils.access$900(this.this$0);
        }
        if (broadcastLong() - networkLong() > 1) {
            return SubnetUtils.access$900(this.this$0) + 1;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long networkLong() {
        return ((long) SubnetUtils.access$900(this.this$0)) & UNSIGNED_INT_MASK;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int asInteger(String str) {
        return SubnetUtils.access$500(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getAddress() {
        return SubnetUtils.access$400(SubnetUtils.access$300(SubnetUtils.access$700(this.this$0)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getAddressCount() {
        long addressCountLong = getAddressCountLong();
        if (addressCountLong <= 2147483647L) {
            return (int) addressCountLong;
        }
        i.l(ai.onnxruntime.a.h(addressCountLong, "Count is larger than an integer: "));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getAddressCountLong() {
        long jBroadcastLong = (broadcastLong() - networkLong()) + ((long) (this.this$0.isInclusiveHostCount() ? 1 : -1));
        if (jBroadcastLong < 0) {
            return 0L;
        }
        return jBroadcastLong;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getAllAddresses() {
        int addressCount = getAddressCount();
        String[] strArr = new String[addressCount];
        if (addressCount != 0) {
            int iHigh = high();
            int iLow = low();
            int i = 0;
            while (iLow <= iHigh) {
                strArr[i] = SubnetUtils.access$400(SubnetUtils.access$300(iLow));
                iLow++;
                i++;
            }
        }
        return strArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getBroadcastAddress() {
        return SubnetUtils.access$400(SubnetUtils.access$300(SubnetUtils.access$600(this.this$0)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getCidrSignature() {
        return SubnetUtils.access$400(SubnetUtils.access$300(SubnetUtils.access$700(this.this$0))) + "/" + Integer.bitCount(SubnetUtils.access$800(this.this$0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getHighAddress() {
        return SubnetUtils.access$400(SubnetUtils.access$300(high()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getLowAddress() {
        return SubnetUtils.access$400(SubnetUtils.access$300(low()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getNetmask() {
        return SubnetUtils.access$400(SubnetUtils.access$300(SubnetUtils.access$800(this.this$0)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getNetworkAddress() {
        return SubnetUtils.access$400(SubnetUtils.access$300(SubnetUtils.access$900(this.this$0)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getNextAddress() {
        return SubnetUtils.access$400(SubnetUtils.access$300(SubnetUtils.access$700(this.this$0) + 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getPreviousAddress() {
        return SubnetUtils.access$400(SubnetUtils.access$300(SubnetUtils.access$700(this.this$0) - 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInRange(int i) {
        if (i == 0) {
            return false;
        }
        long j = ((long) i) & UNSIGNED_INT_MASK;
        return j >= (((long) low()) & UNSIGNED_INT_MASK) && j <= (UNSIGNED_INT_MASK & ((long) high()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Iterable<String> iterableAddressStrings() {
        return new SubnetUtils$SubnetAddressStringIterable(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Stream<String> streamAddressStrings() {
        return StreamSupport.stream(iterableAddressStrings().spliterator(), false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "CIDR Signature:\t[" + getCidrSignature() + "]\n  Netmask: [" + getNetmask() + "]\n  Network: [" + getNetworkAddress() + "]\n  Broadcast: [" + getBroadcastAddress() + "]\n  First address: [" + getLowAddress() + "]\n  Last address: [" + getHighAddress() + "]\n  Address Count: [" + getAddressCountLong() + "]\n";
    }

    public /* synthetic */ SubnetUtils$SubnetInfo(SubnetUtils subnetUtils, SubnetUtils$1 subnetUtils$1) {
        this(subnetUtils);
    }

    public boolean isInRange(String str) {
        return isInRange(SubnetUtils.access$500(str));
    }
}
