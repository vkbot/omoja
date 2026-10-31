package p027c2;

import ai.onnxruntime.AbstractC0074a;
import android.util.JsonReader;
import android.util.JsonToken;
import java.io.BufferedReader;
import java.io.IOException;

/* JADX INFO: renamed from: c2.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0964n {

    /* JADX INFO: renamed from: a */
    public final long f892a;

    public C0964n(long j10) {
        this.f892a = j10;
    }

    /* JADX INFO: renamed from: a */
    public static C0964n m1096a(BufferedReader bufferedReader) throws IOException {
        JsonReader jsonReader = new JsonReader(bufferedReader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        C0964n c0964n = new C0964n(Long.parseLong(jsonReader.nextString()));
                        jsonReader.close();
                        return c0964n;
                    }
                    C0964n c0964n2 = new C0964n(jsonReader.nextLong());
                    jsonReader.close();
                    return c0964n2;
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th) {
            jsonReader.close();
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C0964n) && this.f892a == ((C0964n) obj).f892a;
    }

    public final int hashCode() {
        long j10 = this.f892a;
        return ((int) ((j10 >>> 32) ^ j10)) ^ 1000003;
    }

    public final String toString() {
        return AbstractC0074a.m163n(new StringBuilder("LogResponse{nextRequestWaitMillis="), this.f892a, "}");
    }
}
