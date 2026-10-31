package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.EnumC1035h;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: renamed from: com.bumptech.glide.load.data.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1041b implements InterfaceC1044e {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1123b;

    /* JADX INFO: renamed from: c */
    public Object f1124c;

    /* JADX INFO: renamed from: d */
    public final Comparable f1125d;

    /* JADX INFO: renamed from: e */
    public final Object f1126e;

    public /* synthetic */ AbstractC1041b(int i10, Comparable comparable, Object obj) {
        this.f1123b = i10;
        this.f1126e = obj;
        this.f1125d = comparable;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: b */
    public final void mo1321b() {
        switch (this.f1123b) {
            case 0:
                Object obj = this.f1124c;
                if (obj != null) {
                    try {
                        mo1317g(obj);
                    } catch (IOException unused) {
                        return;
                    }
                    break;
                }
                break;
            default:
                Object obj2 = this.f1124c;
                if (obj2 != null) {
                    try {
                        mo1317g(obj2);
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: c */
    public final int mo1322c() {
        switch (this.f1123b) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    public final void cancel() {
        int i10 = this.f1123b;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: e */
    public final void mo1323e(EnumC1035h enumC1035h, InterfaceC1043d interfaceC1043d) {
        switch (this.f1123b) {
            case 0:
                try {
                    Object objMo1324h = mo1324h((AssetManager) this.f1126e, (String) this.f1125d);
                    this.f1124c = objMo1324h;
                    interfaceC1043d.mo242f(objMo1324h);
                } catch (IOException e) {
                    if (Log.isLoggable("AssetPathFetcher", 3)) {
                        Log.d("AssetPathFetcher", "Failed to load data from asset manager", e);
                    }
                    interfaceC1043d.mo240d(e);
                    return;
                }
                break;
            default:
                try {
                    Object objMo1318i = mo1318i((Uri) this.f1125d, (ContentResolver) this.f1126e);
                    this.f1124c = objMo1318i;
                    interfaceC1043d.mo242f(objMo1318i);
                } catch (FileNotFoundException e6) {
                    if (Log.isLoggable("LocalUriFetcher", 3)) {
                        Log.d("LocalUriFetcher", "Failed to open Uri", e6);
                    }
                    interfaceC1043d.mo240d(e6);
                }
                break;
        }
    }

    /* JADX INFO: renamed from: g */
    public abstract void mo1317g(Object obj);

    /* JADX INFO: renamed from: h */
    public abstract Object mo1324h(AssetManager assetManager, String str);

    /* JADX INFO: renamed from: i */
    public abstract Object mo1318i(Uri uri, ContentResolver contentResolver);

    /* JADX INFO: renamed from: d */
    private final void m1319d() {
    }

    /* JADX INFO: renamed from: f */
    private final void m1320f() {
    }
}
