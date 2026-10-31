package org.apache.commons.net.util;

import j1.i;
import java.math.BigInteger;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class SubnetUtils6 {
    private static final BigInteger MAX_VALUE;
    private static final int NBITS = 128;
    private static final String PARSE_FAIL = "Could not parse [%s]";
    private static final BigInteger TWO;
    private final BigInteger address;
    private final BigInteger high;
    private final BigInteger network;
    private final int prefixLength;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(2L);
        TWO = bigIntegerValueOf;
        MAX_VALUE = bigIntegerValueOf.pow(128).subtract(BigInteger.ONE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SubnetUtils6(String str) {
        BigInteger bigIntegerAnd;
        if (str == null) {
            i.k("Could not parse [null] - null input");
            throw null;
        }
        int iIndexOf = str.indexOf(47);
        if (iIndexOf < 0) {
            i.k(("Could not parse [" + str + "]").concat(" - missing prefix length"));
            throw null;
        }
        String strSubstring = str.substring(0, iIndexOf);
        try {
            int i = Integer.parseInt(str.substring(iIndexOf + 1));
            this.prefixLength = i;
            if (i < 0 || i > 128) {
                i.k(("Could not parse [" + str + "]").concat(" - prefix length must be between 0 and 128"));
                throw null;
            }
            BigInteger bigInteger = new BigInteger(1, toBytes(strSubstring));
            this.address = bigInteger;
            if (i == 0) {
                bigIntegerAnd = BigInteger.ZERO;
            } else {
                BigInteger bigInteger2 = MAX_VALUE;
                bigIntegerAnd = bigInteger2.shiftLeft(128 - i).and(bigInteger2);
            }
            BigInteger bigIntegerAnd2 = bigInteger.and(bigIntegerAnd);
            this.network = bigIntegerAnd2;
            this.high = bigIntegerAnd2.or(MAX_VALUE.xor(bigIntegerAnd));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException(("Could not parse [" + str + "]").concat(" - invalid prefix length"), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ BigInteger access$000(SubnetUtils6 subnetUtils6) {
        return subnetUtils6.address;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$100(BigInteger bigInteger) {
        return format(bigInteger);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(SubnetUtils6 subnetUtils6) {
        return subnetUtils6.prefixLength;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ BigInteger access$300() {
        return TWO;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ BigInteger access$400(SubnetUtils6 subnetUtils6) {
        return subnetUtils6.high;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ BigInteger access$500(SubnetUtils6 subnetUtils6) {
        return subnetUtils6.network;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ byte[] access$600(String str) {
        return toBytes(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String format(BigInteger bigInteger) {
        try {
            return InetAddress.getByAddress(toByteArray16(bigInteger)).getHostAddress();
        } catch (UnknownHostException e) {
            throw new IllegalStateException("Unexpected error formatting IPv6 address", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static byte[] toByteArray16(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == 16) {
            return byteArray;
        }
        byte[] bArr = new byte[16];
        if (byteArray.length > 16) {
            System.arraycopy(byteArray, byteArray.length - 16, bArr, 0, 16);
            return bArr;
        }
        System.arraycopy(byteArray, 0, bArr, 16 - byteArray.length, byteArray.length);
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static byte[] toBytes(String str) {
        try {
            InetAddress byName = InetAddress.getByName(str);
            if (byName instanceof Inet6Address) {
                return byName.getAddress();
            }
            throw new IllegalArgumentException(("Could not parse [" + str + "]").concat(" - not an IPv6 address"));
        } catch (UnknownHostException e) {
            throw new IllegalArgumentException(ai.onnxruntime.a.m("Could not parse [", str, "]"), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SubnetUtils6$SubnetInfo getInfo() {
        return new SubnetUtils6$SubnetInfo(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return getInfo().toString();
    }

    public SubnetUtils6(String str, int i) {
        this(str + "/" + i);
    }
}
