package z4;

import android.util.Base64;
import android.util.JsonWriter;
import j1.i;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map$Entry;
import x4.e;
import x4.f;
import x4.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements e, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6296a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonWriter f6297b;
    public final Map c;
    public final Map d;
    public final x4.d e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f6298f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(BufferedWriter bufferedWriter, HashMap map, HashMap map2, a5.e eVar, boolean z8) {
        this.f6297b = new JsonWriter(bufferedWriter);
        this.c = map;
        this.d = map2;
        this.e = eVar;
        this.f6298f = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.e
    public final e a(x4.c cVar, long j9) throws IOException {
        String str = cVar.f6028a;
        g();
        JsonWriter jsonWriter = this.f6297b;
        jsonWriter.name(str);
        g();
        jsonWriter.value(j9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.g
    public final g b(String str) throws IOException {
        g();
        this.f6297b.value(str);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.g
    public final g c(boolean z8) throws IOException {
        g();
        this.f6297b.value(z8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.e
    public final e d(x4.c cVar, Object obj) throws IOException {
        f(obj, cVar.f6028a);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d e(Object obj) throws IOException {
        JsonWriter jsonWriter = this.f6297b;
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
                    e(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map$Entry map$Entry : ((Map) obj).entrySet()) {
                    Object key = map$Entry.getKey();
                    try {
                        f(map$Entry.getValue(), (String) key);
                    } catch (ClassCastException e) {
                        throw new x4.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            x4.d dVar = (x4.d) this.c.get(obj.getClass());
            if (dVar != null) {
                jsonWriter.beginObject();
                dVar.a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            f fVar = (f) this.d.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (obj instanceof Enum) {
                String strName = ((Enum) obj).name();
                g();
                jsonWriter.value(strName);
                return this;
            }
            jsonWriter.beginObject();
            this.e.a(obj, this);
            jsonWriter.endObject();
            return this;
        }
        if (obj instanceof byte[]) {
            g();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        int i9 = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i9 < length) {
                jsonWriter.value(iArr[i9]);
                i9++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i9 < length2) {
                long j9 = jArr[i9];
                g();
                jsonWriter.value(j9);
                i9++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i9 < length3) {
                jsonWriter.value(dArr[i9]);
                i9++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i9 < length4) {
                jsonWriter.value(zArr[i9]);
                i9++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i9 < length5) {
                e(numberArr[i9]);
                i9++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i9 < length6) {
                e(objArr[i9]);
                i9++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d f(Object obj, String str) throws IOException {
        boolean z8 = this.f6298f;
        JsonWriter jsonWriter = this.f6297b;
        if (z8) {
            if (obj == null) {
                return this;
            }
            g();
            jsonWriter.name(str);
            e(obj);
            return this;
        }
        g();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        e(obj);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        if (this.f6296a) {
            return;
        }
        i.l("Parent context used since this context was created. Cannot use this context anymore.");
    }
}
