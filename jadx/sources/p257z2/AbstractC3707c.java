package p257z2;

import android.os.Looper;
import p025c0.ExecutorC0937f;
import p237x2.HandlerC3566a;

/* JADX INFO: renamed from: z2.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3707c {

    /* JADX INFO: renamed from: a */
    public static final ExecutorC0937f f10990a;

    static {
        new HandlerC3566a(Looper.getMainLooper());
        Looper.getMainLooper();
        f10990a = new ExecutorC0937f(2);
    }
}
