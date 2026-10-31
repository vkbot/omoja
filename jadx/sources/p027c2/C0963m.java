package p027c2;

import java.util.ArrayList;

/* JADX INFO: renamed from: c2.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0963m extends AbstractC0970t {

    /* JADX INFO: renamed from: a */
    public final long f886a;

    /* JADX INFO: renamed from: b */
    public final long f887b;

    /* JADX INFO: renamed from: c */
    public final C0960j f888c;

    /* JADX INFO: renamed from: d */
    public final Integer f889d;

    /* JADX INFO: renamed from: e */
    public final String f890e;

    /* JADX INFO: renamed from: f */
    public final ArrayList f891f;

    public C0963m(long j10, long j11, C0960j c0960j, Integer num, String str, ArrayList arrayList) {
        EnumC0974x enumC0974x = EnumC0974x.f901b;
        this.f886a = j10;
        this.f887b = j11;
        this.f888c = c0960j;
        this.f889d = num;
        this.f890e = str;
        this.f891f = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0970t)) {
            return false;
        }
        C0963m c0963m = (C0963m) ((AbstractC0970t) obj);
        if (this.f886a != c0963m.f886a || this.f887b != c0963m.f887b || !this.f888c.equals(c0963m.f888c)) {
            return false;
        }
        Integer num = c0963m.f889d;
        Integer num2 = this.f889d;
        if (num2 == null) {
            if (num != null) {
                return false;
            }
        } else if (!num2.equals(num)) {
            return false;
        }
        String str = c0963m.f890e;
        String str2 = this.f890e;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (!this.f891f.equals(c0963m.f891f)) {
            return false;
        }
        Object obj2 = EnumC0974x.f901b;
        return obj2.equals(obj2);
    }

    public final int hashCode() {
        long j10 = this.f886a;
        long j11 = this.f887b;
        int iHashCode = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f888c.hashCode()) * 1000003;
        Integer num = this.f889d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f890e;
        return ((((iHashCode2 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ this.f891f.hashCode()) * 1000003) ^ EnumC0974x.f901b.hashCode();
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f886a + ", requestUptimeMs=" + this.f887b + ", clientInfo=" + this.f888c + ", logSource=" + this.f889d + ", logSourceName=" + this.f890e + ", logEvents=" + this.f891f + ", qosTier=" + EnumC0974x.f901b + "}";
    }
}
