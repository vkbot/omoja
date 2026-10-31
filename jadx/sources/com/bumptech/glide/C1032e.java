package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.collection.ArrayMap;
import com.bumptech.glide.manager.C1074t;
import java.util.List;
import p001a0.C0002b;
import p025c0.C0939h;
import p097j.C1906r;
import p108k.C2019g;
import p165p2.C2962e;
import p184r5.C3105c;
import p232w7.C3537c;
import p244y.C3620e;

/* JADX INFO: renamed from: com.bumptech.glide.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1032e extends ContextWrapper {

    /* JADX INFO: renamed from: k */
    public static final C1028a f1078k;

    /* JADX INFO: renamed from: a */
    public final C2019g f1079a;

    /* JADX INFO: renamed from: b */
    public final C0939h f1080b;

    /* JADX INFO: renamed from: c */
    public final C3537c f1081c;

    /* JADX INFO: renamed from: d */
    public final C2962e f1082d;

    /* JADX INFO: renamed from: e */
    public final List f1083e;

    /* JADX INFO: renamed from: f */
    public final ArrayMap f1084f;

    /* JADX INFO: renamed from: g */
    public final C1906r f1085g;

    /* JADX INFO: renamed from: h */
    public final C3105c f1086h;

    /* JADX INFO: renamed from: i */
    public final int f1087i;

    /* JADX INFO: renamed from: j */
    public C3620e f1088j;

    static {
        C1028a c1028a = new C1028a();
        c1028a.f1064b = C0002b.f0a;
        f1078k = c1028a;
    }

    public C1032e(Context context, C2019g c2019g, C1074t c1074t, C3537c c3537c, C2962e c2962e, ArrayMap arrayMap, List list, C1906r c1906r, C3105c c3105c) {
        super(context.getApplicationContext());
        this.f1079a = c2019g;
        this.f1081c = c3537c;
        this.f1082d = c2962e;
        this.f1083e = list;
        this.f1084f = arrayMap;
        this.f1085g = c1906r;
        this.f1086h = c3105c;
        this.f1087i = 4;
        this.f1080b = new C0939h(c1074t);
    }

    /* JADX INFO: renamed from: a */
    public final C1037j m1293a() {
        return (C1037j) this.f1080b.get();
    }
}
