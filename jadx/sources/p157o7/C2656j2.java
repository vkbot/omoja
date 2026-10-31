package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.Set;
import p010a9.C0061w;
import p148n7.EnumC2505e1;
import p155o4.AbstractC2587b;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: o7.j2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2656j2 {

    /* JADX INFO: renamed from: g */
    public static final C0061w f7538g = new C0061w("io.grpc.internal.ManagedChannelServiceConfig.MethodInfo", 3);

    /* JADX INFO: renamed from: a */
    public final Long f7539a;

    /* JADX INFO: renamed from: b */
    public final Boolean f7540b;

    /* JADX INFO: renamed from: c */
    public final Integer f7541c;

    /* JADX INFO: renamed from: d */
    public final Integer f7542d;

    /* JADX INFO: renamed from: e */
    public final C2628e4 f7543e;

    /* JADX INFO: renamed from: f */
    public final C2601a1 f7544f;

    public C2656j2(Map map, boolean z9, int i10, int i11) {
        long j10;
        boolean z10;
        C2628e4 c2628e4;
        C2601a1 c2601a1;
        this.f7539a = AbstractC2694p4.m4218l("timeout", map);
        this.f7540b = AbstractC2694p4.m4209c("waitForReady", map);
        Integer numM4215i = AbstractC2694p4.m4215i("maxResponseMessageBytes", map);
        this.f7541c = numM4215i;
        if (numM4215i != null) {
            AbstractC2587b.m4038e("maxInboundMessageSize %s exceeds bounds", numM4215i.intValue() >= 0, numM4215i);
        }
        Integer numM4215i2 = AbstractC2694p4.m4215i("maxRequestMessageBytes", map);
        this.f7542d = numM4215i2;
        if (numM4215i2 != null) {
            AbstractC2587b.m4038e("maxOutboundMessageSize %s exceeds bounds", numM4215i2.intValue() >= 0, numM4215i2);
        }
        Map mapM4216j = z9 ? AbstractC2694p4.m4216j("retryPolicy", map) : null;
        if (mapM4216j == null) {
            j10 = 0;
            c2628e4 = null;
            z10 = true;
        } else {
            Integer numM4215i3 = AbstractC2694p4.m4215i("maxAttempts", mapM4216j);
            AbstractC2587b.m4042i(numM4215i3, "maxAttempts cannot be empty");
            int iIntValue = numM4215i3.intValue();
            AbstractC2587b.m4036c(iIntValue, "maxAttempts must be greater than 1: %s", iIntValue >= 2);
            int iMin = Math.min(iIntValue, i10);
            Long lM4218l = AbstractC2694p4.m4218l("initialBackoff", mapM4216j);
            AbstractC2587b.m4042i(lM4218l, "initialBackoff cannot be empty");
            long jLongValue = lM4218l.longValue();
            AbstractC2587b.m4040g(jLongValue > 0, "initialBackoffNanos must be greater than 0: %s", jLongValue);
            Long lM4218l2 = AbstractC2694p4.m4218l("maxBackoff", mapM4216j);
            AbstractC2587b.m4042i(lM4218l2, "maxBackoff cannot be empty");
            long jLongValue2 = lM4218l2.longValue();
            j10 = 0;
            z10 = true;
            AbstractC2587b.m4040g(jLongValue2 > 0, "maxBackoff must be greater than 0: %s", jLongValue2);
            Double dM4214h = AbstractC2694p4.m4214h("backoffMultiplier", mapM4216j);
            AbstractC2587b.m4042i(dM4214h, "backoffMultiplier cannot be empty");
            double dDoubleValue = dM4214h.doubleValue();
            AbstractC2587b.m4038e("backoffMultiplier must be greater than 0: %s", dDoubleValue > 0.0d, dM4214h);
            Long lM4218l3 = AbstractC2694p4.m4218l("perAttemptRecvTimeout", mapM4216j);
            AbstractC2587b.m4038e("perAttemptRecvTimeout cannot be negative: %s", lM4218l3 == null || lM4218l3.longValue() >= 0, lM4218l3);
            Set setM4211e = AbstractC2694p4.m4211e("retryableStatusCodes", mapM4216j);
            AbstractC3656k.m5880z("%s is required in retry policy", setM4211e != null, "retryableStatusCodes");
            AbstractC3656k.m5880z("%s must not contain OK", !setM4211e.contains(EnumC2505e1.OK), "retryableStatusCodes");
            AbstractC2587b.m4037d("retryableStatusCodes cannot be empty without perAttemptRecvTimeout", (lM4218l3 == null && setM4211e.isEmpty()) ? false : true);
            c2628e4 = new C2628e4(iMin, jLongValue, jLongValue2, dDoubleValue, lM4218l3, setM4211e);
        }
        this.f7543e = c2628e4;
        Map mapM4216j2 = z9 ? AbstractC2694p4.m4216j("hedgingPolicy", map) : null;
        if (mapM4216j2 == null) {
            c2601a1 = null;
        } else {
            Integer numM4215i4 = AbstractC2694p4.m4215i("maxAttempts", mapM4216j2);
            AbstractC2587b.m4042i(numM4215i4, "maxAttempts cannot be empty");
            int iIntValue2 = numM4215i4.intValue();
            AbstractC2587b.m4036c(iIntValue2, "maxAttempts must be greater than 1: %s", iIntValue2 >= 2 ? z10 : false);
            int iMin2 = Math.min(iIntValue2, i11);
            Long lM4218l4 = AbstractC2694p4.m4218l("hedgingDelay", mapM4216j2);
            AbstractC2587b.m4042i(lM4218l4, "hedgingDelay cannot be empty");
            long jLongValue3 = lM4218l4.longValue();
            AbstractC2587b.m4040g(jLongValue3 >= j10 ? z10 : false, "hedgingDelay must not be negative: %s", jLongValue3);
            Set setM4211e2 = AbstractC2694p4.m4211e("nonFatalStatusCodes", mapM4216j2);
            if (setM4211e2 == null) {
                setM4211e2 = Collections.unmodifiableSet(EnumSet.noneOf(EnumC2505e1.class));
            } else {
                AbstractC3656k.m5880z("%s must not contain OK", !setM4211e2.contains(EnumC2505e1.OK), "nonFatalStatusCodes");
            }
            c2601a1 = new C2601a1(iMin2, jLongValue3, setM4211e2);
        }
        this.f7544f = c2601a1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2656j2)) {
            return false;
        }
        C2656j2 c2656j2 = (C2656j2) obj;
        return AbstractC1031d.m1276f(this.f7539a, c2656j2.f7539a) && AbstractC1031d.m1276f(this.f7540b, c2656j2.f7540b) && AbstractC1031d.m1276f(this.f7541c, c2656j2.f7541c) && AbstractC1031d.m1276f(this.f7542d, c2656j2.f7542d) && AbstractC1031d.m1276f(this.f7543e, c2656j2.f7543e) && AbstractC1031d.m1276f(this.f7544f, c2656j2.f7544f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7539a, this.f7540b, this.f7541c, this.f7542d, this.f7543e, this.f7544f});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7539a, "timeoutNanos");
        c1073sM1263t.m1347c(this.f7540b, "waitForReady");
        c1073sM1263t.m1347c(this.f7541c, "maxInboundMessageSize");
        c1073sM1263t.m1347c(this.f7542d, "maxOutboundMessageSize");
        c1073sM1263t.m1347c(this.f7543e, "retryPolicy");
        c1073sM1263t.m1347c(this.f7544f, "hedgingPolicy");
        return c1073sM1263t.toString();
    }
}
