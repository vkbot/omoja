package p259z4;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p006a5.C0020e;
import p099j1.C1929i;
import p239x4.C3569b;
import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;
import p239x4.InterfaceC3573f;
import p239x4.InterfaceC3574g;

/* JADX INFO: renamed from: z4.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3744d implements InterfaceC3572e, InterfaceC3574g {

    /* JADX INFO: renamed from: a */
    public final boolean f11146a = true;

    /* JADX INFO: renamed from: b */
    public final JsonWriter f11147b;

    /* JADX INFO: renamed from: c */
    public final Map f11148c;

    /* JADX INFO: renamed from: d */
    public final Map f11149d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC3571d f11150e;

    /* JADX INFO: renamed from: f */
    public final boolean f11151f;

    public C3744d(BufferedWriter bufferedWriter, HashMap map, HashMap map2, C0020e c0020e, boolean z9) {
        this.f11147b = new JsonWriter(bufferedWriter);
        this.f11148c = map;
        this.f11149d = map2;
        this.f11150e = c0020e;
        this.f11151f = z9;
    }

    @Override // p239x4.InterfaceC3572e
    /* JADX INFO: renamed from: a */
    public final InterfaceC3572e mo55a(C3570c c3570c, long j10) throws IOException {
        String str = c3570c.f10632a;
        m5976g();
        JsonWriter jsonWriter = this.f11147b;
        jsonWriter.name(str);
        m5976g();
        jsonWriter.value(j10);
        return this;
    }

    @Override // p239x4.InterfaceC3574g
    /* JADX INFO: renamed from: b */
    public final InterfaceC3574g mo87b(String str) throws IOException {
        m5976g();
        this.f11147b.value(str);
        return this;
    }

    @Override // p239x4.InterfaceC3574g
    /* JADX INFO: renamed from: c */
    public final InterfaceC3574g mo88c(boolean z9) throws IOException {
        m5976g();
        this.f11147b.value(z9);
        return this;
    }

    @Override // p239x4.InterfaceC3572e
    /* JADX INFO: renamed from: d */
    public final InterfaceC3572e mo58d(C3570c c3570c, Object obj) throws IOException {
        m5975f(obj, c3570c.f10632a);
        return this;
    }

    /* JADX INFO: renamed from: e */
    public final C3744d m5974e(Object obj) throws IOException {
        JsonWriter jsonWriter = this.f11147b;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    m5974e(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        m5975f(entry.getValue(), (String) key);
                    } catch (ClassCastException e) {
                        throw new C3569b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            InterfaceC3571d interfaceC3571d = (InterfaceC3571d) this.f11148c.get(obj.getClass());
            if (interfaceC3571d != null) {
                jsonWriter.beginObject();
                interfaceC3571d.mo53a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            InterfaceC3573f interfaceC3573f = (InterfaceC3573f) this.f11149d.get(obj.getClass());
            if (interfaceC3573f != null) {
                interfaceC3573f.mo53a(obj, this);
                return this;
            }
            if (obj instanceof Enum) {
                String strName = ((Enum) obj).name();
                m5976g();
                jsonWriter.value(strName);
                return this;
            }
            jsonWriter.beginObject();
            this.f11150e.mo53a(obj, this);
            jsonWriter.endObject();
            return this;
        }
        if (obj instanceof byte[]) {
            m5976g();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        int i10 = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i10 < length) {
                jsonWriter.value(iArr[i10]);
                i10++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i10 < length2) {
                long j10 = jArr[i10];
                m5976g();
                jsonWriter.value(j10);
                i10++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i10 < length3) {
                jsonWriter.value(dArr[i10]);
                i10++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i10 < length4) {
                jsonWriter.value(zArr[i10]);
                i10++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i10 < length5) {
                m5974e(numberArr[i10]);
                i10++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i10 < length6) {
                m5974e(objArr[i10]);
                i10++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    /* JADX INFO: renamed from: f */
    public final C3744d m5975f(Object obj, String str) throws IOException {
        boolean z9 = this.f11151f;
        JsonWriter jsonWriter = this.f11147b;
        if (z9) {
            if (obj == null) {
                return this;
            }
            m5976g();
            jsonWriter.name(str);
            m5974e(obj);
            return this;
        }
        m5976g();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        m5974e(obj);
        return this;
    }

    /* JADX INFO: renamed from: g */
    public final void m5976g() {
        if (this.f11146a) {
            return;
        }
        C1929i.m3030l("Parent context used since this context was created. Cannot use this context anymore.");
    }
}
