package p224v8;

import java.util.concurrent.CancellationException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: v8.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3392j {

    /* JADX INFO: renamed from: a */
    public final Object f9884a;

    /* JADX INFO: renamed from: b */
    public final C3393j0 f9885b;

    /* JADX INFO: renamed from: c */
    public final Function1 f9886c;

    /* JADX INFO: renamed from: d */
    public final Object f9887d;

    /* JADX INFO: renamed from: e */
    public final Throwable f9888e;

    public /* synthetic */ C3392j(Object obj, C3393j0 c3393j0, Function1 function1, CancellationException cancellationException, int i10) {
        this(obj, (i10 & 2) != 0 ? null : c3393j0, (i10 & 4) != 0 ? null : function1, (Object) null, (i10 & 16) != 0 ? null : cancellationException);
    }

    /* JADX INFO: renamed from: a */
    public static C3392j m5344a(C3392j c3392j, C3393j0 c3393j0, CancellationException cancellationException, int i10) {
        Object obj = c3392j.f9884a;
        if ((i10 & 2) != 0) {
            c3393j0 = c3392j.f9885b;
        }
        C3393j0 c3393j1 = c3393j0;
        Function1 function1 = c3392j.f9886c;
        Object obj2 = c3392j.f9887d;
        Throwable th = cancellationException;
        if ((i10 & 16) != 0) {
            th = c3392j.f9888e;
        }
        return new C3392j(obj, c3393j1, function1, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3392j)) {
            return false;
        }
        C3392j c3392j = (C3392j) obj;
        return Intrinsics.areEqual(this.f9884a, c3392j.f9884a) && Intrinsics.areEqual(this.f9885b, c3392j.f9885b) && Intrinsics.areEqual(this.f9886c, c3392j.f9886c) && Intrinsics.areEqual(this.f9887d, c3392j.f9887d) && Intrinsics.areEqual(this.f9888e, c3392j.f9888e);
    }

    public final int hashCode() {
        Object obj = this.f9884a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        C3393j0 c3393j0 = this.f9885b;
        int iHashCode2 = (iHashCode + (c3393j0 == null ? 0 : c3393j0.hashCode())) * 31;
        Function1 function1 = this.f9886c;
        int iHashCode3 = (iHashCode2 + (function1 == null ? 0 : function1.hashCode())) * 31;
        Object obj2 = this.f9887d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f9888e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f9884a + ", cancelHandler=" + this.f9885b + ", onCancellation=" + this.f9886c + ", idempotentResume=" + this.f9887d + ", cancelCause=" + this.f9888e + ')';
    }

    public C3392j(Object obj, C3393j0 c3393j0, Function1 function1, Object obj2, Throwable th) {
        this.f9884a = obj;
        this.f9885b = c3393j0;
        this.f9886c = function1;
        this.f9887d = obj2;
        this.f9888e = th;
    }
}
