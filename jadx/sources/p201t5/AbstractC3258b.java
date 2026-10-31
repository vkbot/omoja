package p201t5;

import ai.onnxruntime.C0075b;
import java.io.IOException;
import java.io.StringWriter;
import p099j1.C1929i;
import p230w5.C3527b;

/* JADX INFO: renamed from: t5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3258b {
    /* JADX INFO: renamed from: a */
    public double mo5190a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* JADX INFO: renamed from: d */
    public int mo5191d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* JADX INFO: renamed from: e */
    public final C3257a m5194e() {
        if (this instanceof C3257a) {
            return (C3257a) this;
        }
        C0075b.m192q(this, "Not a JSON Array: ");
        return null;
    }

    /* JADX INFO: renamed from: f */
    public final C3261e m5195f() {
        if (this instanceof C3261e) {
            return (C3261e) this;
        }
        C0075b.m192q(this, "Not a JSON Object: ");
        return null;
    }

    /* JADX INFO: renamed from: g */
    public String mo5192g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            C3527b c3527b = new C3527b(stringWriter);
            c3527b.f10478f = true;
            C3263g.m5204D(c3527b, this);
            return stringWriter.toString();
        } catch (IOException e) {
            C1929i.m3023e(e);
            return null;
        }
    }
}
