package org.apache.commons.net.util;

import java.math.BigInteger;
import java.net.Inet6Address;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class SubnetUtils6$SubnetInfo {
    final /* synthetic */ SubnetUtils6 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SubnetUtils6$SubnetInfo(SubnetUtils6 subnetUtils6) {
        this.this$0 = subnetUtils6;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getAddress() {
        return SubnetUtils6.access$100(SubnetUtils6.access$000(this.this$0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BigInteger getAddressCount() {
        return SubnetUtils6.access$300().pow(128 - SubnetUtils6.access$200(this.this$0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getCidrSignature() {
        return SubnetUtils6.access$100(SubnetUtils6.access$000(this.this$0)) + "/" + SubnetUtils6.access$200(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getHighAddress() {
        return SubnetUtils6.access$100(SubnetUtils6.access$400(this.this$0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getLowAddress() {
        return SubnetUtils6.access$100(SubnetUtils6.access$500(this.this$0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getNetworkAddress() {
        return SubnetUtils6.access$100(SubnetUtils6.access$500(this.this$0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPrefixLength() {
        return SubnetUtils6.access$200(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInRange(BigInteger bigInteger) {
        return bigInteger != null && bigInteger.compareTo(SubnetUtils6.access$500(this.this$0)) >= 0 && bigInteger.compareTo(SubnetUtils6.access$400(this.this$0)) <= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "CIDR Signature:\t[" + getCidrSignature() + "]\n  Network: [" + getNetworkAddress() + "]\n  First address: [" + getLowAddress() + "]\n  Last address: [" + getHighAddress() + "]\n  Address Count: [" + getAddressCount() + "]\n";
    }

    public /* synthetic */ SubnetUtils6$SubnetInfo(SubnetUtils6 subnetUtils6, SubnetUtils6$1 subnetUtils6$1) {
        this(subnetUtils6);
    }

    public boolean isInRange(byte[] bArr) {
        if (bArr == null || bArr.length != 16) {
            return false;
        }
        return isInRange(new BigInteger(1, bArr));
    }

    public boolean isInRange(Inet6Address inet6Address) {
        if (inet6Address == null) {
            return false;
        }
        return isInRange(inet6Address.getAddress());
    }

    public boolean isInRange(String str) {
        return isInRange(SubnetUtils6.access$600(str));
    }
}
