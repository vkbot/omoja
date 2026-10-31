package p030c5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.core.content.ContextCompat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p020b5.InterfaceC0902a;
import p039d2.C1252h;
import p114k5.InterfaceC2050b;
import p155o4.C2591f;
import p168p5.C2972a;
import p200t4.C3240a;
import p200t4.C3244e;
import p200t4.C3247h;
import p200t4.C3255p;
import p200t4.InterfaceC3242c;

/* JADX INFO: renamed from: c5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0987b implements InterfaceC2050b {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f937a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f938b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f939c;

    public /* synthetic */ C0987b(C2591f c2591f, Context context) {
        this.f937a = 1;
        this.f939c = c2591f;
        this.f938b = context;
    }

    @Override // p114k5.InterfaceC2050b
    public final Object get() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        switch (this.f937a) {
            case 0:
                return new C0994i((Context) this.f938b, (String) this.f939c);
            case 1:
                C2591f c2591f = (C2591f) this.f939c;
                Context context = (Context) this.f938b;
                String strM4065c = c2591f.m4065c();
                C2972a c2972a = new C2972a();
                Context contextCreateDeviceProtectedStorageContext = ContextCompat.createDeviceProtectedStorageContext(context);
                SharedPreferences sharedPreferences = contextCreateDeviceProtectedStorageContext.getSharedPreferences("com.google.firebase.common.prefs:".concat(strM4065c), 0);
                boolean z9 = true;
                if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
                    z9 = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
                } else {
                    try {
                        PackageManager packageManager = contextCreateDeviceProtectedStorageContext.getPackageManager();
                        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(contextCreateDeviceProtectedStorageContext.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                            z9 = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                        }
                        break;
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                c2972a.f8268a = z9;
                return c2972a;
            default:
                C3244e c3244e = (C3244e) this.f938b;
                C3240a c3240a = (C3240a) this.f939c;
                InterfaceC3242c interfaceC3242c = c3240a.f9513f;
                C1252h c1252h = new C1252h();
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                HashSet hashSet4 = new HashSet();
                HashSet hashSet5 = new HashSet();
                Set<C3247h> set = c3240a.f9510c;
                Set set2 = c3240a.f9514g;
                for (C3247h c3247h : set) {
                    int i10 = c3247h.f9531c;
                    int i11 = c3247h.f9530b;
                    boolean z10 = i10 == 0;
                    C3255p c3255p = c3247h.f9529a;
                    if (z10) {
                        if (i11 == 2) {
                            hashSet4.add(c3255p);
                        } else {
                            hashSet.add(c3255p);
                        }
                    } else if (i10 == 2) {
                        hashSet3.add(c3255p);
                    } else if (i11 == 2) {
                        hashSet5.add(c3255p);
                    } else {
                        hashSet2.add(c3255p);
                    }
                }
                if (!set2.isEmpty()) {
                    hashSet.add(C3255p.m5189a(InterfaceC0902a.class));
                }
                c1252h.f2952a = Collections.unmodifiableSet(hashSet);
                c1252h.f2953b = Collections.unmodifiableSet(hashSet2);
                c1252h.f2954c = Collections.unmodifiableSet(hashSet3);
                c1252h.f2955d = Collections.unmodifiableSet(hashSet4);
                c1252h.f2956e = Collections.unmodifiableSet(hashSet5);
                c1252h.f2957f = c3244e;
                return interfaceC3242c.mo817a(c1252h);
        }
    }

    public /* synthetic */ C0987b(int i10, Object obj, Object obj2) {
        this.f937a = i10;
        this.f938b = obj;
        this.f939c = obj2;
    }
}
