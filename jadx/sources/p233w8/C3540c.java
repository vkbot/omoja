package p233w8;

import ai.onnxruntime.AbstractC0074a;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import p010a9.AbstractC0055q;
import p034c9.C1018d;
import p224v8.AbstractC3387h0;
import p224v8.C3437y0;
import p224v8.InterfaceC3439z0;

/* JADX INFO: renamed from: w8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3540c extends AbstractC3541d {
    private volatile C3540c _immediate;

    /* JADX INFO: renamed from: b */
    public final Handler f10510b;

    /* JADX INFO: renamed from: c */
    public final boolean f10511c;

    /* JADX INFO: renamed from: d */
    public final C3540c f10512d;

    public C3540c(Handler handler, boolean z9) {
        this.f10510b = handler;
        this.f10511c = z9;
        this._immediate = z9 ? this : null;
        C3540c c3540c = this._immediate;
        if (c3540c == null) {
            c3540c = new C3540c(handler, true);
            this._immediate = c3540c;
        }
        this.f10512d = c3540c;
    }

    @Override // p224v8.AbstractC3422t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        if (this.f10510b.post(runnable)) {
            return;
        }
        CancellationException cancellationException = new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        InterfaceC3439z0 interfaceC3439z0 = (InterfaceC3439z0) coroutineContext.get(C3437y0.f9916b);
        if (interfaceC3439z0 != null) {
            interfaceC3439z0.mo5330c(cancellationException);
        }
        AbstractC3387h0.f9880b.dispatch(coroutineContext, runnable);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C3540c) && ((C3540c) obj).f10510b == this.f10510b;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f10510b);
    }

    @Override // p224v8.AbstractC3422t
    public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return (this.f10511c && Intrinsics.areEqual(Looper.myLooper(), this.f10510b.getLooper())) ? false : true;
    }

    @Override // p224v8.AbstractC3422t
    public final String toString() {
        C3540c c3540c;
        String str;
        C1018d c1018d = AbstractC3387h0.f9879a;
        C3540c c3540c2 = AbstractC0055q.f145a;
        if (this == c3540c2) {
            str = "Dispatchers.Main";
        } else {
            try {
                c3540c = c3540c2.f10512d;
            } catch (UnsupportedOperationException unused) {
                c3540c = null;
            }
            str = this == c3540c ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.f10510b.toString();
        return this.f10511c ? AbstractC0074a.m148C(string, ".immediate") : string;
    }
}
