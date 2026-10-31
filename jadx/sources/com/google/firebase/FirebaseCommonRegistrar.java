package com.google.firebase;

import android.content.Context;
import android.os.Build;
import androidx.fragment.app.C0566h;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.KotlinVersion;
import org.apache.commons.net.ftp.C2930a;
import org.apache.commons.p161io.IOUtils;
import p016b1.AbstractC0880u;
import p030c5.C0989d;
import p030c5.C0990e;
import p030c5.InterfaceC0991f;
import p030c5.InterfaceC0992g;
import p063f6.C1580d;
import p142n0.C2467b;
import p155o4.C2591f;
import p184r5.C3103a;
import p184r5.C3104b;
import p193s4.InterfaceC3205a;
import p200t4.C3240a;
import p200t4.C3247h;
import p200t4.C3255p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    /* JADX INFO: renamed from: a */
    public static String m1886a(String str) {
        return str.replace(' ', '_').replace(IOUtils.DIR_SEPARATOR_UNIX, '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List getComponents() {
        String string;
        ArrayList arrayList = new ArrayList();
        C1580d c1580dM5180a = C3240a.m5180a(C3104b.class);
        c1580dM5180a.m2664a(new C3247h(2, 0, C3103a.class));
        c1580dM5180a.f3914f = new C2930a(5);
        arrayList.add(c1580dM5180a.m2665b());
        C3255p c3255p = new C3255p(InterfaceC3205a.class, Executor.class);
        C1580d c1580d = new C1580d(C0989d.class, new Class[]{InterfaceC0991f.class, InterfaceC0992g.class});
        c1580d.m2664a(C3247h.m5187a(Context.class));
        c1580d.m2664a(C3247h.m5187a(C2591f.class));
        c1580d.m2664a(new C3247h(2, 0, C0990e.class));
        c1580d.m2664a(new C3247h(1, 1, C3104b.class));
        c1580d.m2664a(new C3247h(c3255p, 1, 0));
        c1580d.f3914f = new C0566h(4, c3255p);
        arrayList.add(c1580d.m2665b());
        arrayList.add(AbstractC0880u.m997d("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(AbstractC0880u.m997d("fire-core", "21.0.0"));
        arrayList.add(AbstractC0880u.m997d("device-name", m1886a(Build.PRODUCT)));
        arrayList.add(AbstractC0880u.m997d("device-model", m1886a(Build.DEVICE)));
        arrayList.add(AbstractC0880u.m997d("device-brand", m1886a(Build.BRAND)));
        arrayList.add(AbstractC0880u.m999f("android-target-sdk", new C2467b(8)));
        arrayList.add(AbstractC0880u.m999f("android-min-sdk", new C2467b(9)));
        arrayList.add(AbstractC0880u.m999f("android-platform", new C2467b(10)));
        arrayList.add(AbstractC0880u.m999f("android-installer", new C2467b(11)));
        try {
            string = KotlinVersion.CURRENT.toString();
        } catch (NoClassDefFoundError unused) {
            string = null;
        }
        if (string != null) {
            arrayList.add(AbstractC0880u.m997d("kotlin", string));
        }
        return arrayList;
    }
}
