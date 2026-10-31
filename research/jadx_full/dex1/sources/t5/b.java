package t5;

import j1.i;
import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a e() {
        if (this instanceof a) {
            return (a) this;
        }
        ai.onnxruntime.b.q(this, "Not a JSON Array: ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final e f() {
        if (this instanceof e) {
            return (e) this;
        }
        ai.onnxruntime.b.q(this, "Not a JSON Object: ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            w5.b bVar = new w5.b(stringWriter);
            bVar.f5925f = true;
            g.D(bVar, this);
            return stringWriter.toString();
        } catch (IOException e) {
            i.e(e);
            return null;
        }
    }
}
