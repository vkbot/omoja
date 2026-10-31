package o4;

import android.content.Context;
import android.text.TextUtils;
import j1.i;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4097b;
    public final String c;
    public final String d;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f4098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f4099g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i9 = s2.b.f5240a;
        if (str == null || str.trim().isEmpty()) {
            i.l("ApplicationId must be set.");
            throw null;
        }
        this.f4097b = str;
        this.f4096a = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f4098f = str6;
        this.f4099g = str7;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h a(Context context) {
        l.d dVar = new l.d(context, 11);
        String strV = dVar.v("google_app_id");
        if (TextUtils.isEmpty(strV)) {
            return null;
        }
        return new h(strV, dVar.v("google_api_key"), dVar.v("firebase_database_url"), dVar.v("ga_trackingId"), dVar.v("gcm_defaultSenderId"), dVar.v("google_storage_bucket"), dVar.v("project_id"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return r2.a.d(this.f4097b, hVar.f4097b) && r2.a.d(this.f4096a, hVar.f4096a) && r2.a.d(this.c, hVar.c) && r2.a.d(this.d, hVar.d) && r2.a.d(this.e, hVar.e) && r2.a.d(this.f4098f, hVar.f4098f) && r2.a.d(this.f4099g, hVar.f4099g);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4097b, this.f4096a, this.c, this.d, this.e, this.f4098f, this.f4099g});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        l.d dVar = new l.d(this);
        dVar.f(this.f4097b, "applicationId");
        dVar.f(this.f4096a, "apiKey");
        dVar.f(this.c, "databaseUrl");
        dVar.f(this.e, "gcmSenderId");
        dVar.f(this.f4098f, "storageBucket");
        dVar.f(this.f4099g, "projectId");
        return dVar.toString();
    }
}
