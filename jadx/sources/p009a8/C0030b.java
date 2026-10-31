package p009a8;

import com.bumptech.glide.AbstractC1030c;
import java.io.PrintStream;
import java.io.PrintWriter;

/* JADX INFO: renamed from: a8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0030b extends AbstractC1030c {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f95b;

    /* JADX INFO: renamed from: c */
    public final Object f96c;

    public /* synthetic */ C0030b(int i10, Object obj) {
        this.f95b = i10;
        this.f96c = obj;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: p */
    public final void mo91p(String str) {
        switch (this.f95b) {
            case 0:
                ((PrintStream) this.f96c).println((Object) str);
                break;
            default:
                ((PrintWriter) this.f96c).println((Object) str);
                break;
        }
    }
}
