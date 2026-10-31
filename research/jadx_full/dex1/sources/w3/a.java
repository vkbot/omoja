package w3;

import android.graphics.Typeface;
import n.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Typeface f5891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p f5892b;
    public boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(p pVar, Typeface typeface) {
        this.f5891a = typeface;
        this.f5892b = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w3.g
    public final void a(int i9) {
        if (this.c) {
            return;
        }
        s3.c cVar = (s3.c) this.f5892b.c;
        if (cVar.l(this.f5891a)) {
            cVar.j(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // w3.g
    public final void b(Typeface typeface, boolean z8) {
        if (this.c) {
            return;
        }
        s3.c cVar = (s3.c) this.f5892b.c;
        if (cVar.l(typeface)) {
            cVar.j(false);
        }
    }
}
