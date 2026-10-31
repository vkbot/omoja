package c5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Bundle;
import androidx.core.content.ContextCompat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import t4.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements k5.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f494b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(o4.f fVar, Context context) {
        this.f493a = 1;
        this.c = fVar;
        this.f494b = context;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k5.b
    public final Object get() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        switch (this.f493a) {
            case 0:
                return new i((Context) this.f494b, (String) this.c);
            case 1:
                o4.f fVar = (o4.f) this.c;
                Context context = (Context) this.f494b;
                String strC = fVar.c();
                p5.a aVar = new p5.a();
                Context contextCreateDeviceProtectedStorageContext = ContextCompat.createDeviceProtectedStorageContext(context);
                SharedPreferences sharedPreferences = contextCreateDeviceProtectedStorageContext.getSharedPreferences("com.google.firebase.common.prefs:".concat(strC), 0);
                boolean z8 = true;
                if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
                    z8 = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
                } else {
                    try {
                        PackageManager packageManager = contextCreateDeviceProtectedStorageContext.getPackageManager();
                        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(contextCreateDeviceProtectedStorageContext.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                            z8 = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                        }
                        break;
                    } catch (PackageManager$NameNotFoundException unused) {
                    }
                }
                aVar.f4592a = z8;
                return aVar;
            default:
                t4.e eVar = (t4.e) this.f494b;
                t4.a aVar2 = (t4.a) this.c;
                t4.c cVar = aVar2.f5385f;
                d2.h hVar = new d2.h();
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                HashSet hashSet4 = new HashSet();
                HashSet hashSet5 = new HashSet();
                Set<t4.h> set = aVar2.c;
                Set set2 = aVar2.f5386g;
                for (t4.h hVar2 : set) {
                    int i9 = hVar2.c;
                    int i10 = hVar2.f5398b;
                    boolean z9 = i9 == 0;
                    p pVar = hVar2.f5397a;
                    if (z9) {
                        if (i10 == 2) {
                            hashSet4.add(pVar);
                        } else {
                            hashSet.add(pVar);
                        }
                    } else if (i9 == 2) {
                        hashSet3.add(pVar);
                    } else if (i10 == 2) {
                        hashSet5.add(pVar);
                    } else {
                        hashSet2.add(pVar);
                    }
                }
                if (!set2.isEmpty()) {
                    hashSet.add(p.a(b5.a.class));
                }
                hVar.f1677a = Collections.unmodifiableSet(hashSet);
                hVar.f1678b = Collections.unmodifiableSet(hashSet2);
                hVar.c = Collections.unmodifiableSet(hashSet3);
                hVar.d = Collections.unmodifiableSet(hashSet4);
                hVar.e = Collections.unmodifiableSet(hashSet5);
                hVar.f1679f = eVar;
                return cVar.a(hVar);
        }
    }

    public /* synthetic */ b(int i9, Object obj, Object obj2) {
        this.f493a = i9;
        this.f494b = obj;
        this.c = obj2;
    }
}
