package o7;

import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j2 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a9.w f4288g = new a9.w("io.grpc.internal.ManagedChannelServiceConfig.MethodInfo", 3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Long f4289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f4290b;
    public final Integer c;
    public final Integer d;
    public final e4 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a1 f4291f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j2(Map map, boolean z8, int i9, int i10) {
        long j9;
        boolean z9;
        e4 e4Var;
        a1 a1Var;
        this.f4289a = p4.l("timeout", map);
        this.f4290b = p4.c("waitForReady", map);
        Integer numI = p4.i("maxResponseMessageBytes", map);
        this.c = numI;
        if (numI != null) {
            o4.b.e("maxInboundMessageSize %s exceeds bounds", numI.intValue() >= 0, numI);
        }
        Integer numI2 = p4.i("maxRequestMessageBytes", map);
        this.d = numI2;
        if (numI2 != null) {
            o4.b.e("maxOutboundMessageSize %s exceeds bounds", numI2.intValue() >= 0, numI2);
        }
        Map mapJ = z8 ? p4.j("retryPolicy", map) : null;
        if (mapJ == null) {
            j9 = 0;
            e4Var = null;
            z9 = true;
        } else {
            Integer numI3 = p4.i("maxAttempts", mapJ);
            o4.b.i(numI3, "maxAttempts cannot be empty");
            int iIntValue = numI3.intValue();
            o4.b.c(iIntValue, "maxAttempts must be greater than 1: %s", iIntValue >= 2);
            int iMin = Math.min(iIntValue, i9);
            Long l9 = p4.l("initialBackoff", mapJ);
            o4.b.i(l9, "initialBackoff cannot be empty");
            long jLongValue = l9.longValue();
            o4.b.g(jLongValue > 0, "initialBackoffNanos must be greater than 0: %s", jLongValue);
            Long l10 = p4.l("maxBackoff", mapJ);
            o4.b.i(l10, "maxBackoff cannot be empty");
            long jLongValue2 = l10.longValue();
            j9 = 0;
            z9 = true;
            o4.b.g(jLongValue2 > 0, "maxBackoff must be greater than 0: %s", jLongValue2);
            Double dH = p4.h("backoffMultiplier", mapJ);
            o4.b.i(dH, "backoffMultiplier cannot be empty");
            double dDoubleValue = dH.doubleValue();
            o4.b.e("backoffMultiplier must be greater than 0: %s", dDoubleValue > 0.0d, dH);
            Long l11 = p4.l("perAttemptRecvTimeout", mapJ);
            o4.b.e("perAttemptRecvTimeout cannot be negative: %s", l11 == null || l11.longValue() >= 0, l11);
            Set setE = p4.e("retryableStatusCodes", mapJ);
            y5.k.z("%s is required in retry policy", setE != null, "retryableStatusCodes");
            y5.k.z("%s must not contain OK", !setE.contains(n7.e1.OK), "retryableStatusCodes");
            o4.b.d("retryableStatusCodes cannot be empty without perAttemptRecvTimeout", (l11 == null && setE.isEmpty()) ? false : true);
            e4Var = new e4(iMin, jLongValue, jLongValue2, dDoubleValue, l11, setE);
        }
        this.e = e4Var;
        Map mapJ2 = z8 ? p4.j("hedgingPolicy", map) : null;
        if (mapJ2 == null) {
            a1Var = null;
        } else {
            Integer numI4 = p4.i("maxAttempts", mapJ2);
            o4.b.i(numI4, "maxAttempts cannot be empty");
            int iIntValue2 = numI4.intValue();
            o4.b.c(iIntValue2, "maxAttempts must be greater than 1: %s", iIntValue2 >= 2 ? z9 : false);
            int iMin2 = Math.min(iIntValue2, i10);
            Long l12 = p4.l("hedgingDelay", mapJ2);
            o4.b.i(l12, "hedgingDelay cannot be empty");
            long jLongValue3 = l12.longValue();
            o4.b.g(jLongValue3 >= j9 ? z9 : false, "hedgingDelay must not be negative: %s", jLongValue3);
            Set setE2 = p4.e("nonFatalStatusCodes", mapJ2);
            if (setE2 == null) {
                setE2 = Collections.unmodifiableSet(EnumSet.noneOf(n7.e1.class));
            } else {
                y5.k.z("%s must not contain OK", !setE2.contains(n7.e1.OK), "nonFatalStatusCodes");
            }
            a1Var = new a1(iMin2, jLongValue3, setE2);
        }
        this.f4291f = a1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof j2)) {
            return false;
        }
        j2 j2Var = (j2) obj;
        return com.bumptech.glide.d.f(this.f4289a, j2Var.f4289a) && com.bumptech.glide.d.f(this.f4290b, j2Var.f4290b) && com.bumptech.glide.d.f(this.c, j2Var.c) && com.bumptech.glide.d.f(this.d, j2Var.d) && com.bumptech.glide.d.f(this.e, j2Var.e) && com.bumptech.glide.d.f(this.f4291f, j2Var.f4291f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4289a, this.f4290b, this.c, this.d, this.e, this.f4291f});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f4289a, "timeoutNanos");
        sVarT.c(this.f4290b, "waitForReady");
        sVarT.c(this.c, "maxInboundMessageSize");
        sVarT.c(this.d, "maxOutboundMessageSize");
        sVarT.c(this.e, "retryPolicy");
        sVarT.c(this.f4291f, "hedgingPolicy");
        return sVarT.toString();
    }
}
