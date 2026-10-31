package p126l5;

import android.text.TextUtils;
import java.util.regex.Pattern;
import p136m5.C2399b;
import p232w7.C3537c;

/* JADX INFO: renamed from: l5.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2216k {

    /* JADX INFO: renamed from: b */
    public static final Pattern f5821b = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* JADX INFO: renamed from: c */
    public static C2216k f5822c;

    /* JADX INFO: renamed from: a */
    public final C3537c f5823a;

    public C2216k(C3537c c3537c) {
        this.f5823a = c3537c;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m3549a(C2399b c2399b) {
        if (TextUtils.isEmpty(c2399b.f6493c)) {
            return true;
        }
        long j10 = c2399b.f6496f + c2399b.f6495e;
        this.f5823a.getClass();
        return j10 < (System.currentTimeMillis() / 1000) + 3600;
    }
}
