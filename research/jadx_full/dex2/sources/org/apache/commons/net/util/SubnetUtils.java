package org.apache.commons.net.util;

import j1.i;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class SubnetUtils {
    private static final int NBITS = 32;
    private static final String PARSE_FAIL = "Could not parse [%s]";
    private final int address;
    private final int broadcast;
    private boolean inclusiveHostCount;
    private final int netmask;
    private final int network;
    private static final String IP_ADDRESS = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})";
    private static final Pattern ADDRESS_PATTERN = Pattern.compile(IP_ADDRESS);
    private static final String SLASH_FORMAT = "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})";
    private static final Pattern CIDR_PATTERN = Pattern.compile(SLASH_FORMAT);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SubnetUtils(String str) {
        Matcher matcher = CIDR_PATTERN.matcher(str);
        if (!matcher.matches()) {
            i.k(ai.onnxruntime.a.m("Could not parse [", str, "]"));
            throw null;
        }
        int iMatchAddress = matchAddress(matcher);
        this.address = iMatchAddress;
        int iRangeCheck = (int) (4294967295 << (32 - rangeCheck(Integer.parseInt(matcher.group(5)), 0, 32)));
        this.netmask = iRangeCheck;
        int i = iMatchAddress & iRangeCheck;
        this.network = i;
        this.broadcast = i | (~iRangeCheck);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int[] access$300(int i) {
        return toArray4(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$400(int[] iArr) {
        return format(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$500(String str) {
        return toInteger(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$600(SubnetUtils subnetUtils) {
        return subnetUtils.broadcast;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$700(SubnetUtils subnetUtils) {
        return subnetUtils.address;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$800(SubnetUtils subnetUtils) {
        return subnetUtils.netmask;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$900(SubnetUtils subnetUtils) {
        return subnetUtils.network;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String format(int[] iArr) {
        int length = iArr.length - 1;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            sb.append(iArr[i]);
            if (i == length) {
                return sb.toString();
            }
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            i++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int matchAddress(Matcher matcher) {
        int iRangeCheck = 0;
        for (int i = 1; i <= 4; i++) {
            iRangeCheck |= (rangeCheck(Integer.parseInt(matcher.group(i)), 0, 255) & 255) << ((4 - i) * 8);
        }
        return iRangeCheck;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int rangeCheck(int i, int i2, int i3) {
        if (i >= i2 && i <= i3) {
            return i;
        }
        i.k(ai.onnxruntime.a.o(ai.onnxruntime.a.v("Value [", i, i2, "] not in range [", ","), "]", i3));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int[] toArray4(int i) {
        int[] iArr = new int[4];
        for (int i2 = 3; i2 >= 0; i2--) {
            iArr[i2] = iArr[i2] | ((i >>> ((3 - i2) * 8)) & 255);
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int toInteger(String str) {
        Matcher matcher = ADDRESS_PATTERN.matcher(str);
        if (matcher.matches()) {
            return matchAddress(matcher);
        }
        i.k(ai.onnxruntime.a.m("Could not parse [", str, "]"));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final SubnetUtils$SubnetInfo getInfo() {
        return new SubnetUtils$SubnetInfo(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SubnetUtils getNext() {
        return new SubnetUtils(getInfo().getNextAddress(), getInfo().getNetmask());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SubnetUtils getPrevious() {
        return new SubnetUtils(getInfo().getPreviousAddress(), getInfo().getNetmask());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInclusiveHostCount() {
        return this.inclusiveHostCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInclusiveHostCount(boolean z) {
        this.inclusiveHostCount = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return getInfo().toString();
    }

    public SubnetUtils(String str, String str2) {
        int integer = toInteger(str);
        this.address = integer;
        int integer2 = toInteger(str2);
        this.netmask = integer2;
        if (((-integer2) & integer2) - 1 == (~integer2)) {
            int i = integer & integer2;
            this.network = i;
            this.broadcast = i | (~integer2);
            return;
        }
        i.k(ai.onnxruntime.a.m("Could not parse [", str2, "]"));
        throw null;
    }
}
