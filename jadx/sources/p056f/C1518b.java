package p056f;

import com.bumptech.glide.manager.C1073s;
import java.io.File;
import org.apache.commons.p161io.FilenameUtils;

/* JADX INFO: renamed from: f.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1518b {

    /* JADX INFO: renamed from: a */
    public final String f3711a;

    /* JADX INFO: renamed from: b */
    public final long[] f3712b;

    /* JADX INFO: renamed from: c */
    public final File[] f3713c;

    /* JADX INFO: renamed from: d */
    public final File[] f3714d;

    /* JADX INFO: renamed from: e */
    public boolean f3715e;

    /* JADX INFO: renamed from: f */
    public C1073s f3716f;

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ C1519c f3717g;

    public C1518b(C1519c c1519c, String str) {
        this.f3717g = c1519c;
        this.f3711a = str;
        int i10 = c1519c.f3724h;
        File file = c1519c.f3718b;
        this.f3712b = new long[i10];
        this.f3713c = new File[i10];
        this.f3714d = new File[i10];
        StringBuilder sb = new StringBuilder(str);
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        int length = sb.length();
        for (int i11 = 0; i11 < i10; i11++) {
            sb.append(i11);
            this.f3713c[i11] = new File(file, sb.toString());
            sb.append(".tmp");
            this.f3714d[i11] = new File(file, sb.toString());
            sb.setLength(length);
        }
    }

    /* JADX INFO: renamed from: a */
    public final String m2584a() {
        StringBuilder sb = new StringBuilder();
        for (long j10 : this.f3712b) {
            sb.append(' ');
            sb.append(j10);
        }
        return sb.toString();
    }
}
