package p027c2;

import java.util.Arrays;

/* JADX INFO: renamed from: c2.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0962l extends AbstractC0969s {

    /* JADX INFO: renamed from: a */
    public final long f879a;

    /* JADX INFO: renamed from: b */
    public final Integer f880b;

    /* JADX INFO: renamed from: c */
    public final long f881c;

    /* JADX INFO: renamed from: d */
    public final byte[] f882d;

    /* JADX INFO: renamed from: e */
    public final String f883e;

    /* JADX INFO: renamed from: f */
    public final long f884f;

    /* JADX INFO: renamed from: g */
    public final AbstractC0973w f885g;

    public C0962l(long j10, Integer num, long j11, byte[] bArr, String str, long j12, AbstractC0973w abstractC0973w) {
        this.f879a = j10;
        this.f880b = num;
        this.f881c = j11;
        this.f882d = bArr;
        this.f883e = str;
        this.f884f = j12;
        this.f885g = abstractC0973w;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0969s) {
            AbstractC0969s abstractC0969s = (AbstractC0969s) obj;
            C0962l c0962l = (C0962l) abstractC0969s;
            if (this.f879a == c0962l.f879a) {
                Integer num = c0962l.f880b;
                Integer num2 = this.f880b;
                if (num2 != null ? num2.equals(num) : num == null) {
                    if (this.f881c == c0962l.f881c) {
                        if (Arrays.equals(this.f882d, abstractC0969s instanceof C0962l ? ((C0962l) abstractC0969s).f882d : c0962l.f882d)) {
                            String str = c0962l.f883e;
                            String str2 = this.f883e;
                            if (str2 != null ? str2.equals(str) : str == null) {
                                if (this.f884f == c0962l.f884f) {
                                    AbstractC0973w abstractC0973w = c0962l.f885g;
                                    AbstractC0973w abstractC0973w2 = this.f885g;
                                    if (abstractC0973w2 != null ? abstractC0973w2.equals(abstractC0973w) : abstractC0973w == null) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f879a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f880b;
        int iHashCode = (i10 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j11 = this.f881c;
        int iHashCode2 = (((iHashCode ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f882d)) * 1000003;
        String str = this.f883e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j12 = this.f884f;
        int i11 = (iHashCode3 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        AbstractC0973w abstractC0973w = this.f885g;
        return i11 ^ (abstractC0973w != null ? abstractC0973w.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f879a + ", eventCode=" + this.f880b + ", eventUptimeMs=" + this.f881c + ", sourceExtension=" + Arrays.toString(this.f882d) + ", sourceExtensionJsonProto3=" + this.f883e + ", timezoneOffsetSeconds=" + this.f884f + ", networkConnectionInfo=" + this.f885g + "}";
    }
}
