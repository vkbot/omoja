package p217v1;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.ViewModelProvider;
import com.example.navistart.MyApplication;
import p047e0.AbstractC1387m;
import p094i7.C1770s;
import p099j1.C1929i;

/* JADX INFO: renamed from: v1.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3326d {

    /* JADX INFO: renamed from: b */
    public static C3326d f9735b;

    /* JADX INFO: renamed from: a */
    public final ViewModelProvider f9736a;

    public C3326d(Context context, MyApplication myApplication) {
        this.f9736a = new ViewModelProvider(myApplication, ViewModelProvider.AndroidViewModelFactory.getInstance((Application) context));
    }

    /* JADX INFO: renamed from: a */
    public static C3326d m5242a() {
        C3326d c3326d = f9735b;
        if (c3326d != null) {
            return c3326d;
        }
        C1929i.m3030l(AbstractC1387m.m2421h(new byte[]{93, -76, 87, -47, 107, -18, -1, -69, 103, -103, 91, -43, 86, -32, -17, -67, 99, -72, 64, -122, 79, -14, -69, -80, 100, -87, 18, -49, 72, -24, -17, -73, 106, -79, 91, -36, 67, -27}, new byte[]{11, -35, 50, -90, 38, -127, -101, -34}));
        return null;
    }

    /* JADX INFO: renamed from: b */
    public final C3323a m5243b() {
        return (C3323a) this.f9736a.get(C3323a.class);
    }

    /* JADX INFO: renamed from: c */
    public final C1770s m5244c() {
        return (C1770s) this.f9736a.get(C1770s.class);
    }

    /* JADX INFO: renamed from: d */
    public final C3325c m5245d() {
        return (C3325c) this.f9736a.get(C3325c.class);
    }
}
