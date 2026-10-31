package f;

import j1.i;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f2149b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, int i9) {
        super(i9);
        this.f2149b = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.ByteArrayOutputStream
    public final String toString() {
        int i9 = ((ByteArrayOutputStream) this).count;
        if (i9 > 0) {
            int i10 = i9 - 1;
            if (((ByteArrayOutputStream) this).buf[i10] == 13) {
                i9 = i10;
            }
        }
        try {
            return new String(((ByteArrayOutputStream) this).buf, 0, i9, this.f2149b.c.name());
        } catch (UnsupportedEncodingException e) {
            i.e(e);
            return null;
        }
    }
}
