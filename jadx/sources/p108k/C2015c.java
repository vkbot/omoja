package p108k;

/* JADX INFO: renamed from: k.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2015c {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f5498a;

    /* JADX INFO: renamed from: a */
    public final int m3099a(Object obj) {
        switch (this.f5498a) {
            case 0:
                return ((byte[]) obj).length;
            default:
                return ((int[]) obj).length;
        }
    }

    /* JADX INFO: renamed from: b */
    public final int m3100b() {
        switch (this.f5498a) {
            case 0:
                return 1;
            default:
                return 4;
        }
    }

    /* JADX INFO: renamed from: c */
    public final String m3101c() {
        switch (this.f5498a) {
            case 0:
                return "ByteArrayPool";
            default:
                return "IntegerArrayPool";
        }
    }
}
