package p155o4;

import android.content.Context;
import android.text.TextUtils;
import java.util.Arrays;
import p099j1.C1929i;
import p120l.C2187d;
import p181r2.AbstractC3093a;
import p191s2.AbstractC3186b;

/* JADX INFO: renamed from: o4.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2593h {

    /* JADX INFO: renamed from: a */
    public final String f7222a;

    /* JADX INFO: renamed from: b */
    public final String f7223b;

    /* JADX INFO: renamed from: c */
    public final String f7224c;

    /* JADX INFO: renamed from: d */
    public final String f7225d;

    /* JADX INFO: renamed from: e */
    public final String f7226e;

    /* JADX INFO: renamed from: f */
    public final String f7227f;

    /* JADX INFO: renamed from: g */
    public final String f7228g;

    public C2593h(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i10 = AbstractC3186b.f9274a;
        if (str == null || str.trim().isEmpty()) {
            C1929i.m3030l("ApplicationId must be set.");
            throw null;
        }
        this.f7223b = str;
        this.f7222a = str2;
        this.f7224c = str3;
        this.f7225d = str4;
        this.f7226e = str5;
        this.f7227f = str6;
        this.f7228g = str7;
    }

    /* JADX INFO: renamed from: a */
    public static C2593h m4067a(Context context) {
        C2187d c2187d = new C2187d(context, 11);
        String strM3493v = c2187d.m3493v("google_app_id");
        if (TextUtils.isEmpty(strM3493v)) {
            return null;
        }
        return new C2593h(strM3493v, c2187d.m3493v("google_api_key"), c2187d.m3493v("firebase_database_url"), c2187d.m3493v("ga_trackingId"), c2187d.m3493v("gcm_defaultSenderId"), c2187d.m3493v("google_storage_bucket"), c2187d.m3493v("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2593h)) {
            return false;
        }
        C2593h c2593h = (C2593h) obj;
        return AbstractC3093a.m4928d(this.f7223b, c2593h.f7223b) && AbstractC3093a.m4928d(this.f7222a, c2593h.f7222a) && AbstractC3093a.m4928d(this.f7224c, c2593h.f7224c) && AbstractC3093a.m4928d(this.f7225d, c2593h.f7225d) && AbstractC3093a.m4928d(this.f7226e, c2593h.f7226e) && AbstractC3093a.m4928d(this.f7227f, c2593h.f7227f) && AbstractC3093a.m4928d(this.f7228g, c2593h.f7228g);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7223b, this.f7222a, this.f7224c, this.f7225d, this.f7226e, this.f7227f, this.f7228g});
    }

    public final String toString() {
        C2187d c2187d = new C2187d(this);
        c2187d.m3479f(this.f7223b, "applicationId");
        c2187d.m3479f(this.f7222a, "apiKey");
        c2187d.m3479f(this.f7224c, "databaseUrl");
        c2187d.m3479f(this.f7226e, "gcmSenderId");
        c2187d.m3479f(this.f7227f, "storageBucket");
        c2187d.m3479f(this.f7228g, "projectId");
        return c2187d.toString();
    }
}
