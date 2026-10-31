package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.collection.ArrayMap;
import com.bumptech.glide.manager.t;
import j.r;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends ContextWrapper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f556k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k.g f557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c0.h f558b;
    public final w7.c c;
    public final p2.e d;
    public final List e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayMap f559f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r f560g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final r5.c f561h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f562i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public y.e f563j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a aVar = new a();
        aVar.f546b = a0.b.f3a;
        f556k = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(Context context, k.g gVar, t tVar, w7.c cVar, p2.e eVar, ArrayMap arrayMap, List list, r rVar, r5.c cVar2) {
        super(context.getApplicationContext());
        this.f557a = gVar;
        this.c = cVar;
        this.d = eVar;
        this.e = list;
        this.f559f = arrayMap;
        this.f560g = rVar;
        this.f561h = cVar2;
        this.f562i = 4;
        this.f558b = new c0.h(tVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final j a() {
        return (j) this.f558b.get();
    }
}
