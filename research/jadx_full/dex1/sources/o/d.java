package o;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import h.h;
import java.io.File;
import java.io.FileNotFoundException;
import n.q;
import n.r;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements com.bumptech.glide.load.data.e {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String[] f4003l = {"_data"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f4004b;
    public final r c;
    public final r d;
    public final Uri e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4005f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4006g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final h f4007h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Class f4008i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f4009j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile com.bumptech.glide.load.data.e f4010k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Context context, r rVar, r rVar2, Uri uri, int i9, int i10, h hVar, Class cls) {
        this.f4004b = context.getApplicationContext();
        this.c = rVar;
        this.d = rVar2;
        this.e = uri;
        this.f4005f = i9;
        this.f4006g = i10;
        this.f4007h = hVar;
        this.f4008i = cls;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return this.f4008i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        com.bumptech.glide.load.data.e eVar = this.f4010k;
        if (eVar != null) {
            eVar.b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final int c() {
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f4009j = true;
        com.bumptech.glide.load.data.e eVar = this.f4010k;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final com.bumptech.glide.load.data.e d() throws Throwable {
        q qVarB;
        boolean zO = androidx.transition.d.o();
        Cursor cursor = null;
        Context context = this.f4004b;
        h hVar = this.f4007h;
        int i9 = this.f4006g;
        int i10 = this.f4005f;
        if (zO) {
            Uri uri = this.e;
            try {
                Cursor cursorQuery = context.getContentResolver().query(uri, f4003l, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            cursorQuery.close();
                            qVarB = this.c.b(file, i10, i9, hVar);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            Uri uriF = this.e;
            boolean zN = a.a.n(uriF);
            r rVar = this.d;
            if (zN && uriF.getPathSegments().contains("picker")) {
                qVarB = rVar.b(uriF, i10, i9, hVar);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    uriF = androidx.transition.d.f(uriF);
                }
                qVarB = rVar.b(uriF, i10, i9, hVar);
            }
        }
        if (qVarB != null) {
            return qVarB.c;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.h hVar, com.bumptech.glide.load.data.d dVar) throws Throwable {
        try {
            com.bumptech.glide.load.data.e eVarD = d();
            if (eVarD == null) {
                dVar.d(new IllegalArgumentException("Failed to build fetcher for: " + this.e));
            } else {
                this.f4010k = eVarD;
                if (this.f4009j) {
                    cancel();
                } else {
                    eVarD.e(hVar, dVar);
                }
            }
        } catch (FileNotFoundException e) {
            dVar.d(e);
        }
    }
}
