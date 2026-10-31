package m5;

import com.bumptech.glide.manager.s;
import j1.i;
import n7.k1;
import o7.d2;
import o7.h3;
import o7.i4;
import o7.m;
import o7.x1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3665a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3666b;
    public Object c;
    public Object d;
    public Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f3667f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f3668g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f3669h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Integer num, h3 h3Var, k1 k1Var, i4 i4Var, d2 d2Var, m mVar, x1 x1Var) {
        this.f3666b = num.intValue();
        o4.b.i(h3Var, "proxyDetector not set");
        this.c = h3Var;
        this.d = k1Var;
        this.e = i4Var;
        this.f3667f = d2Var;
        this.f3668g = mVar;
        this.f3669h = x1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b a() {
        String strConcat = this.f3666b == 0 ? " registrationStatus" : "";
        if (((Long) this.f3668g) == null) {
            strConcat = strConcat.concat(" expiresInSecs");
        }
        if (((Long) this.f3669h) == null) {
            strConcat = strConcat.concat(" tokenCreationEpochInSecs");
        }
        if (strConcat.isEmpty()) {
            return new b((String) this.c, this.f3666b, (String) this.d, (String) this.e, ((Long) this.f3668g).longValue(), ((Long) this.f3669h).longValue(), (String) this.f3667f);
        }
        i.l("Missing required properties:".concat(strConcat));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f3665a) {
            case 1:
                s sVarT = com.bumptech.glide.c.t(this);
                sVarT.e("defaultPort", String.valueOf(this.f3666b));
                sVarT.c((h3) this.c, "proxyDetector");
                sVarT.c((k1) this.d, "syncContext");
                sVarT.c((i4) this.e, "serviceConfigParser");
                sVarT.c((d2) this.f3667f, "scheduledExecutorService");
                sVarT.c((m) this.f3668g, "channelLogger");
                sVarT.c((x1) this.f3669h, "executor");
                sVarT.c(null, "overrideAuthority");
                return sVarT.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ a() {
    }
}
