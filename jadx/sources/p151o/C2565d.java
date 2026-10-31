package p151o;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.EnumC1035h;
import com.bumptech.glide.load.data.InterfaceC1043d;
import com.bumptech.glide.load.data.InterfaceC1044e;
import java.io.File;
import java.io.FileNotFoundException;
import p000a.AbstractC0000a;
import p077h.C1646h;
import p141n.C2456q;
import p141n.InterfaceC2457r;

/* JADX INFO: renamed from: o.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2565d implements InterfaceC1044e {

    /* JADX INFO: renamed from: l */
    public static final String[] f7090l = {"_data"};

    /* JADX INFO: renamed from: b */
    public final Context f7091b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC2457r f7092c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC2457r f7093d;

    /* JADX INFO: renamed from: e */
    public final Uri f7094e;

    /* JADX INFO: renamed from: f */
    public final int f7095f;

    /* JADX INFO: renamed from: g */
    public final int f7096g;

    /* JADX INFO: renamed from: h */
    public final C1646h f7097h;

    /* JADX INFO: renamed from: i */
    public final Class f7098i;

    /* JADX INFO: renamed from: j */
    public volatile boolean f7099j;

    /* JADX INFO: renamed from: k */
    public volatile InterfaceC1044e f7100k;

    public C2565d(Context context, InterfaceC2457r interfaceC2457r, InterfaceC2457r interfaceC2457r2, Uri uri, int i10, int i11, C1646h c1646h, Class cls) {
        this.f7091b = context.getApplicationContext();
        this.f7092c = interfaceC2457r;
        this.f7093d = interfaceC2457r2;
        this.f7094e = uri;
        this.f7095f = i10;
        this.f7096g = i11;
        this.f7097h = c1646h;
        this.f7098i = cls;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        return this.f7098i;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: b */
    public final void mo1321b() {
        InterfaceC1044e interfaceC1044e = this.f7100k;
        if (interfaceC1044e != null) {
            interfaceC1044e.mo1321b();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: c */
    public final int mo1322c() {
        return 1;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    public final void cancel() {
        this.f7099j = true;
        InterfaceC1044e interfaceC1044e = this.f7100k;
        if (interfaceC1044e != null) {
            interfaceC1044e.cancel();
        }
    }

    /* JADX INFO: renamed from: d */
    public final InterfaceC1044e m3998d() throws Throwable {
        C2456q c2456qMo3791b;
        boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
        Cursor cursor = null;
        Context context = this.f7091b;
        C1646h c1646h = this.f7097h;
        int i10 = this.f7096g;
        int i11 = this.f7095f;
        if (zIsExternalStorageLegacy) {
            Uri uri = this.f7094e;
            try {
                Cursor cursorQuery = context.getContentResolver().query(uri, f7090l, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            cursorQuery.close();
                            c2456qMo3791b = this.f7092c.mo3791b(file, i11, i10, c1646h);
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
            Uri requireOriginal = this.f7094e;
            boolean zM13n = AbstractC0000a.m13n(requireOriginal);
            InterfaceC2457r interfaceC2457r = this.f7093d;
            if (zM13n && requireOriginal.getPathSegments().contains("picker")) {
                c2456qMo3791b = interfaceC2457r.mo3791b(requireOriginal, i11, i10, c1646h);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                }
                c2456qMo3791b = interfaceC2457r.mo3791b(requireOriginal, i11, i10, c1646h);
            }
        }
        if (c2456qMo3791b != null) {
            return c2456qMo3791b.f6651c;
        }
        return null;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: e */
    public final void mo1323e(EnumC1035h enumC1035h, InterfaceC1043d interfaceC1043d) throws Throwable {
        try {
            InterfaceC1044e interfaceC1044eM3998d = m3998d();
            if (interfaceC1044eM3998d == null) {
                interfaceC1043d.mo240d(new IllegalArgumentException("Failed to build fetcher for: " + this.f7094e));
            } else {
                this.f7100k = interfaceC1044eM3998d;
                if (this.f7099j) {
                    cancel();
                } else {
                    interfaceC1044eM3998d.mo1323e(enumC1035h, interfaceC1043d);
                }
            }
        } catch (FileNotFoundException e) {
            interfaceC1043d.mo240d(e);
        }
    }
}
