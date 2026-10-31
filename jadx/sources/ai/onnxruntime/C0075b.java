package ai.onnxruntime;

import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.fragment.app.Fragment;
import java.io.IOException;
import java.util.ConcurrentModificationException;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: ai.onnxruntime.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0075b implements Interpolator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f158b;

    public /* synthetic */ C0075b(int i10) {
        this.f158b = i10;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ void m176a() {
        throw new ConcurrentModificationException();
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m177b(int i10, String str) {
        throw new IllegalStateException(str + i10);
    }

    /* JADX INFO: renamed from: c */
    public static /* synthetic */ void m178c(int i10, String str, Object obj, Object obj2) {
        throw new IllegalStateException(str + i10 + obj + obj2);
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m179d(Fragment fragment, String str) {
        throw new IllegalStateException(str + ((Object) fragment.toString()) + ((Object) " is already attached to a FragmentManager."));
    }

    /* JADX INFO: renamed from: e */
    public static /* synthetic */ void m180e(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ void m181f(Object obj, String str) {
        throw new RuntimeException(str + obj);
    }

    /* JADX INFO: renamed from: g */
    public static /* synthetic */ void m182g(Object obj, String str, Object obj2) {
        throw new IllegalStateException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: h */
    public static /* synthetic */ void m183h(String str) {
        throw new RuntimeException(str);
    }

    /* JADX INFO: renamed from: i */
    public static /* synthetic */ void m184i(String str, float f8, Object obj) {
        throw new IllegalArgumentException(str + f8 + obj);
    }

    /* JADX INFO: renamed from: j */
    public static /* synthetic */ void m185j(String str, int i10, Object obj, int i11, Object obj2) {
        throw new IndexOutOfBoundsException(str + i10 + obj + i11 + obj2);
    }

    /* JADX INFO: renamed from: k */
    public static /* synthetic */ void m186k(String str, int i10, Object obj, long j10) {
        throw new IllegalArgumentException(str + i10 + obj + j10);
    }

    /* JADX INFO: renamed from: l */
    public static /* synthetic */ void m187l(String str, long j10, Object obj, int i10) {
        throw new IllegalArgumentException(str + j10 + obj + i10);
    }

    /* JADX INFO: renamed from: m */
    public static /* synthetic */ void m188m(String str, Object obj, Object obj2, Object obj3) throws IOException {
        throw new IOException(str + obj + obj2 + obj3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: n */
    public static /* synthetic */ void m189n(String str, Object obj, Object obj2, Object obj3, int i10) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + ((char) i10));
    }

    /* JADX INFO: renamed from: o */
    public static /* synthetic */ void m190o(String str, Throwable th) {
        throw new RuntimeException(str, th);
    }

    /* JADX INFO: renamed from: p */
    public static /* synthetic */ void m191p(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalStateException(sb.toString());
    }

    /* JADX INFO: renamed from: q */
    public static /* synthetic */ void m192q(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    /* JADX INFO: renamed from: r */
    public static /* synthetic */ void m193r(Object obj, String str, Object obj2) {
        throw new NoSuchElementException(str + obj + obj2);
    }

    /* JADX INFO: renamed from: s */
    public static /* synthetic */ void m194s(String str, int i10, Object obj, int i11, Object obj2) {
        throw new IllegalArgumentException(str + i10 + obj + i11 + obj2);
    }

    /* JADX INFO: renamed from: t */
    public static /* synthetic */ void m195t(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    /* JADX INFO: renamed from: u */
    public static /* synthetic */ void m196u(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    /* JADX INFO: renamed from: v */
    public static /* synthetic */ void m197v(Object obj, String str, Object obj2) {
        throw new IllegalArgumentException((str + obj + obj2).toString());
    }

    /* JADX INFO: renamed from: w */
    public static /* synthetic */ void m198w(Object obj, String str) throws IOException {
        throw new IOException(str + obj);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f8) {
        switch (this.f158b) {
            case 16:
                return Transition.lambda$getInterpolator$1(f8);
            case 17:
                return Transition.lambda$getInterpolator$2(f8);
            case 18:
                return Transition.lambda$getInterpolator$3(f8);
            case 19:
                return Transition.lambda$getInterpolator$4(f8);
            case 20:
                return Transition.lambda$getInterpolator$5(f8);
            case 21:
                return Transition.lambda$getInterpolator$6(f8);
            default:
                return Transition.lambda$getInterpolator$7(f8);
        }
    }
}
