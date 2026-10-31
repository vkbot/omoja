package p019b4;

import android.os.Handler;
import android.os.Looper;
import android.view.animation.LinearInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import p018b3.AbstractC0884a;

/* JADX INFO: renamed from: b4.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0899j {

    /* JADX INFO: renamed from: b */
    public static final Handler f689b;

    /* JADX INFO: renamed from: a */
    public boolean f690a;

    static {
        FastOutSlowInInterpolator fastOutSlowInInterpolator = AbstractC0884a.f662b;
        LinearInterpolator linearInterpolator = AbstractC0884a.f661a;
        LinearOutSlowInInterpolator linearOutSlowInInterpolator = AbstractC0884a.f664d;
        f689b = new Handler(Looper.getMainLooper(), new C0892c(0));
    }

    /* JADX INFO: renamed from: a */
    public abstract void m1027a(int i10);

    /* JADX INFO: renamed from: b */
    public abstract void m1028b();

    /* JADX INFO: renamed from: c */
    public abstract void m1029c();

    /* JADX INFO: renamed from: d */
    public abstract void m1030d();
}
