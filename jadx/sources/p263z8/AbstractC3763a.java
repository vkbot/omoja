package p263z8;

import java.util.Arrays;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: renamed from: z8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3763a {

    /* JADX INFO: renamed from: b */
    public AbstractC3765c[] f11217b;

    /* JADX INFO: renamed from: c */
    public int f11218c;

    /* JADX INFO: renamed from: d */
    public int f11219d;

    /* JADX INFO: renamed from: a */
    public final AbstractC3765c m5990a() {
        AbstractC3765c abstractC3765cMo5890c;
        synchronized (this) {
            try {
                AbstractC3765c[] abstractC3765cArrMo5891d = this.f11217b;
                if (abstractC3765cArrMo5891d == null) {
                    abstractC3765cArrMo5891d = mo5891d();
                    this.f11217b = abstractC3765cArrMo5891d;
                } else if (this.f11218c >= abstractC3765cArrMo5891d.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(abstractC3765cArrMo5891d, abstractC3765cArrMo5891d.length * 2);
                    this.f11217b = (AbstractC3765c[]) objArrCopyOf;
                    abstractC3765cArrMo5891d = (AbstractC3765c[]) objArrCopyOf;
                }
                int i10 = this.f11219d;
                do {
                    abstractC3765cMo5890c = abstractC3765cArrMo5891d[i10];
                    if (abstractC3765cMo5890c == null) {
                        abstractC3765cMo5890c = mo5890c();
                        abstractC3765cArrMo5891d[i10] = abstractC3765cMo5890c;
                    }
                    i10++;
                    if (i10 >= abstractC3765cArrMo5891d.length) {
                        i10 = 0;
                    }
                } while (!abstractC3765cMo5890c.mo5907a(this));
                this.f11219d = i10;
                this.f11218c++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC3765cMo5890c;
    }

    /* JADX INFO: renamed from: c */
    public abstract AbstractC3765c mo5890c();

    /* JADX INFO: renamed from: d */
    public abstract AbstractC3765c[] mo5891d();

    /* JADX INFO: renamed from: e */
    public final void m5991e(AbstractC3765c abstractC3765c) {
        int i10;
        Continuation[] continuationArrMo5908b;
        synchronized (this) {
            try {
                int i11 = this.f11218c - 1;
                this.f11218c = i11;
                if (i11 == 0) {
                    this.f11219d = 0;
                }
                abstractC3765c.getClass();
                continuationArrMo5908b = abstractC3765c.mo5908b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : continuationArrMo5908b) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m6088constructorimpl(Unit.INSTANCE));
            }
        }
    }
}
