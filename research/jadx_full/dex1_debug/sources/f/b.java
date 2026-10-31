package f;

import com.bumptech.glide.manager.s;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f2135b;
    public final File[] c;
    public final File[] d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s f2136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ c f2137g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(c cVar, String str) {
        this.f2137g = cVar;
        this.f2134a = str;
        int i9 = cVar.f2141h;
        File file = cVar.f2138b;
        this.f2135b = new long[i9];
        this.c = new File[i9];
        this.d = new File[i9];
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i10 = 0; i10 < i9; i10++) {
            sb.append(i10);
            this.c[i10] = new File(file, sb.toString());
            sb.append(".tmp");
            this.d[i10] = new File(file, sb.toString());
            sb.setLength(length);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String a() {
        StringBuilder sb = new StringBuilder();
        for (long j9 : this.f2135b) {
            sb.append(' ');
            sb.append(j9);
        }
        return sb.toString();
    }
}
