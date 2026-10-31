package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f586b;
    public Object c;
    public final Comparable d;
    public final Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i9, Comparable comparable, Object obj) {
        this.f586b = i9;
        this.e = obj;
        this.d = comparable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        switch (this.f586b) {
            case 0:
                Object obj = this.c;
                if (obj != null) {
                    try {
                        g(obj);
                    } catch (IOException unused) {
                        return;
                    }
                    break;
                }
                break;
            default:
                Object obj2 = this.c;
                if (obj2 != null) {
                    try {
                        g(obj2);
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final int c() {
        switch (this.f586b) {
        }
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i9 = this.f586b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.h hVar, d dVar) {
        switch (this.f586b) {
            case 0:
                try {
                    Object objH = h((AssetManager) this.e, (String) this.d);
                    this.c = objH;
                    dVar.f(objH);
                } catch (IOException e) {
                    if (Log.isLoggable("AssetPathFetcher", 3)) {
                        Log.d("AssetPathFetcher", "Failed to load data from asset manager", e);
                    }
                    dVar.d(e);
                    return;
                }
                break;
            default:
                try {
                    Object objI = i((Uri) this.d, (ContentResolver) this.e);
                    this.c = objI;
                    dVar.f(objI);
                } catch (FileNotFoundException e6) {
                    if (Log.isLoggable("LocalUriFetcher", 3)) {
                        Log.d("LocalUriFetcher", "Failed to open Uri", e6);
                    }
                    dVar.d(e6);
                }
                break;
        }
    }

    public abstract void g(Object obj);

    public abstract Object h(AssetManager assetManager, String str);

    public abstract Object i(Uri uri, ContentResolver contentResolver);

    private final void d() {
    }

    private final void f() {
    }
}
