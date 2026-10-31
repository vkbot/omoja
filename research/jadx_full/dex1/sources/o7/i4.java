package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4283b;
    public final int c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i4(boolean z8, int i9, int i10, Object obj) {
        this.f4282a = z8;
        this.f4283b = i9;
        this.c = i10;
        this.d = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static i4 a(i4 i4Var, i4 i4Var2) {
        String str = (String) i4Var.d;
        if (str == null) {
            str = (String) i4Var2.d;
        }
        return new i4(i4Var.f4282a && i4Var2.f4282a, i4Var.f4283b + i4Var2.f4283b, i4Var.c + i4Var2.c, str);
    }
}
