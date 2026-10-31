package com.google.firebase;

import android.content.Context;
import android.os.Build;
import android.os.Build$VERSION;
import b1.u;
import c5.e;
import c5.f;
import c5.g;
import com.google.firebase.components.ComponentRegistrar;
import f6.d;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.KotlinVersion;
import r5.b;
import t4.a;
import t4.h;
import t4.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        String string;
        ArrayList arrayList = new ArrayList();
        d dVarA = a.a(b.class);
        dVarA.a(new h(2, 0, r5.a.class));
        dVarA.f2263f = new org.apache.commons.net.ftp.a(5);
        arrayList.add(dVarA.b());
        p pVar = new p(s4.a.class, Executor.class);
        d dVar = new d(c5.d.class, new Class[]{f.class, g.class});
        dVar.a(h.a(Context.class));
        dVar.a(h.a(o4.f.class));
        dVar.a(new h(2, 0, e.class));
        dVar.a(new h(1, 1, b.class));
        dVar.a(new h(pVar, 1, 0));
        dVar.f2263f = new androidx.fragment.app.h(4, pVar);
        arrayList.add(dVar.b());
        arrayList.add(u.d("fire-android", String.valueOf(Build$VERSION.SDK_INT)));
        arrayList.add(u.d("fire-core", "21.0.0"));
        arrayList.add(u.d("device-name", a(Build.PRODUCT)));
        arrayList.add(u.d("device-model", a(Build.DEVICE)));
        arrayList.add(u.d("device-brand", a(Build.BRAND)));
        arrayList.add(u.f("android-target-sdk", new n0.b(8)));
        arrayList.add(u.f("android-min-sdk", new n0.b(9)));
        arrayList.add(u.f("android-platform", new n0.b(10)));
        arrayList.add(u.f("android-installer", new n0.b(11)));
        try {
            string = KotlinVersion.CURRENT.toString();
        } catch (NoClassDefFoundError unused) {
            string = null;
        }
        if (string != null) {
            arrayList.add(u.d("kotlin", string));
        }
        return arrayList;
    }
}
