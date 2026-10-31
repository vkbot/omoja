package org.apache.commons.net.util;

import ai.onnxruntime.AbstractC0074a;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
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

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class SubnetAddressStringIterable implements Iterable<String> {
        private final SubnetInfo subnetInfo;

        private SubnetAddressStringIterable(SubnetInfo subnetInfo) {
            this.subnetInfo = subnetInfo;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return new SubnetAddressStringIterator(this.subnetInfo);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class SubnetAddressStringIterator implements Iterator<String> {
        private int currentAddress;
        private final SubnetInfo subnetInfo;

        private SubnetAddressStringIterator(SubnetInfo subnetInfo) {
            this.subnetInfo = subnetInfo;
            this.currentAddress = subnetInfo.low();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.subnetInfo.getAddressCountLong() > 0 && this.currentAddress <= this.subnetInfo.high();
        }

        @Override // java.util.Iterator
        public String next() {
            int i10 = this.currentAddress;
            this.currentAddress = i10 + 1;
            return SubnetUtils.format(SubnetUtils.toArray4(i10));
        }
    }

    public SubnetUtils(String str) {
        Matcher matcher = CIDR_PATTERN.matcher(str);
        if (!matcher.matches()) {
            C1929i.m3029k(AbstractC0074a.m162m("Could not parse [", str, "]"));
            throw null;
        }
        int iMatchAddress = matchAddress(matcher);
        this.address = iMatchAddress;
        int iRangeCheck = (int) (4294967295 << (32 - rangeCheck(Integer.parseInt(matcher.group(5)), 0, 32)));
        this.netmask = iRangeCheck;
        int i10 = iMatchAddress & iRangeCheck;
        this.network = i10;
        this.broadcast = i10 | (~iRangeCheck);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String format(int[] iArr) {
        int length = iArr.length - 1;
        StringBuilder sb = new StringBuilder();
        int i10 = 0;
        while (true) {
            sb.append(iArr[i10]);
            if (i10 == length) {
                return sb.toString();
            }
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            i10++;
        }
    }

    private static int matchAddress(Matcher matcher) {
        int iRangeCheck = 0;
        for (int i10 = 1; i10 <= 4; i10++) {
            iRangeCheck |= (rangeCheck(Integer.parseInt(matcher.group(i10)), 0, 255) & 255) << ((4 - i10) * 8);
        }
        return iRangeCheck;
    }

    private static int rangeCheck(int i10, int i11, int i12) {
        if (i10 >= i11 && i10 <= i12) {
            return i10;
        }
        C1929i.m3029k(AbstractC0074a.m164o(AbstractC0074a.m171v("Value [", i10, i11, "] not in range [", ","), "]", i12));
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int[] toArray4(int i10) {
        int[] iArr = new int[4];
        for (int i11 = 3; i11 >= 0; i11--) {
            iArr[i11] = iArr[i11] | ((i10 >>> ((3 - i11) * 8)) & 255);
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int toInteger(String str) {
        Matcher matcher = ADDRESS_PATTERN.matcher(str);
        if (matcher.matches()) {
            return matchAddress(matcher);
        }
        C1929i.m3029k(AbstractC0074a.m162m("Could not parse [", str, "]"));
        return 0;
    }

    public final SubnetInfo getInfo() {
        return new SubnetInfo();
    }

    public SubnetUtils getNext() {
        return new SubnetUtils(getInfo().getNextAddress(), getInfo().getNetmask());
    }

    public SubnetUtils getPrevious() {
        return new SubnetUtils(getInfo().getPreviousAddress(), getInfo().getNetmask());
    }

    public boolean isInclusiveHostCount() {
        return this.inclusiveHostCount;
    }

    public void setInclusiveHostCount(boolean z9) {
        this.inclusiveHostCount = z9;
    }

    public String toString() {
        return getInfo().toString();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public final class SubnetInfo {
        private static final long UNSIGNED_INT_MASK = 4294967295L;

        private SubnetInfo() {
        }

        private long broadcastLong() {
            return ((long) SubnetUtils.this.broadcast) & UNSIGNED_INT_MASK;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int high() {
            if (SubnetUtils.this.isInclusiveHostCount()) {
                return SubnetUtils.this.broadcast;
            }
            if (broadcastLong() - networkLong() > 1) {
                return SubnetUtils.this.broadcast - 1;
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int low() {
            if (SubnetUtils.this.isInclusiveHostCount()) {
                return SubnetUtils.this.network;
            }
            if (broadcastLong() - networkLong() > 1) {
                return SubnetUtils.this.network + 1;
            }
            return 0;
        }

        private long networkLong() {
            return ((long) SubnetUtils.this.network) & UNSIGNED_INT_MASK;
        }

        public int asInteger(String str) {
            return SubnetUtils.toInteger(str);
        }

        public String getAddress() {
            return SubnetUtils.format(SubnetUtils.toArray4(SubnetUtils.this.address));
        }

        @Deprecated
        public int getAddressCount() {
            long addressCountLong = getAddressCountLong();
            if (addressCountLong <= 2147483647L) {
                return (int) addressCountLong;
            }
            C1929i.m3030l(AbstractC0074a.m157h(addressCountLong, "Count is larger than an integer: "));
            return 0;
        }

        public long getAddressCountLong() {
            long jBroadcastLong = (broadcastLong() - networkLong()) + ((long) (SubnetUtils.this.isInclusiveHostCount() ? 1 : -1));
            if (jBroadcastLong < 0) {
                return 0L;
            }
            return jBroadcastLong;
        }

        public String[] getAllAddresses() {
            int addressCount = getAddressCount();
            String[] strArr = new String[addressCount];
            if (addressCount != 0) {
                int iHigh = high();
                int iLow = low();
                int i10 = 0;
                while (iLow <= iHigh) {
                    strArr[i10] = SubnetUtils.format(SubnetUtils.toArray4(iLow));
                    iLow++;
                    i10++;
                }
            }
            return strArr;
        }

        public String getBroadcastAddress() {
            return SubnetUtils.format(SubnetUtils.toArray4(SubnetUtils.this.broadcast));
        }

        public String getCidrSignature() {
            return SubnetUtils.format(SubnetUtils.toArray4(SubnetUtils.this.address)) + "/" + Integer.bitCount(SubnetUtils.this.netmask);
        }

        public String getHighAddress() {
            return SubnetUtils.format(SubnetUtils.toArray4(high()));
        }

        public String getLowAddress() {
            return SubnetUtils.format(SubnetUtils.toArray4(low()));
        }

        public String getNetmask() {
            return SubnetUtils.format(SubnetUtils.toArray4(SubnetUtils.this.netmask));
        }

        public String getNetworkAddress() {
            return SubnetUtils.format(SubnetUtils.toArray4(SubnetUtils.this.network));
        }

        public String getNextAddress() {
            return SubnetUtils.format(SubnetUtils.toArray4(SubnetUtils.this.address + 1));
        }

        public String getPreviousAddress() {
            return SubnetUtils.format(SubnetUtils.toArray4(SubnetUtils.this.address - 1));
        }

        public boolean isInRange(int i10) {
            if (i10 == 0) {
                return false;
            }
            long j10 = ((long) i10) & UNSIGNED_INT_MASK;
            return j10 >= (((long) low()) & UNSIGNED_INT_MASK) && j10 <= (UNSIGNED_INT_MASK & ((long) high()));
        }

        public Iterable<String> iterableAddressStrings() {
            return new SubnetAddressStringIterable(this);
        }

        public Stream<String> streamAddressStrings() {
            return StreamSupport.stream(iterableAddressStrings().spliterator(), false);
        }

        public String toString() {
            return "CIDR Signature:\t[" + getCidrSignature() + "]\n  Netmask: [" + getNetmask() + "]\n  Network: [" + getNetworkAddress() + "]\n  Broadcast: [" + getBroadcastAddress() + "]\n  First address: [" + getLowAddress() + "]\n  Last address: [" + getHighAddress() + "]\n  Address Count: [" + getAddressCountLong() + "]\n";
        }

        public boolean isInRange(String str) {
            return isInRange(SubnetUtils.toInteger(str));
        }
    }

    public SubnetUtils(String str, String str2) {
        int integer = toInteger(str);
        this.address = integer;
        int integer2 = toInteger(str2);
        this.netmask = integer2;
        if (((-integer2) & integer2) - 1 == (~integer2)) {
            int i10 = integer & integer2;
            this.network = i10;
            this.broadcast = i10 | (~integer2);
            return;
        }
        C1929i.m3029k(AbstractC0074a.m162m("Could not parse [", str2, "]"));
        throw null;
    }
}
