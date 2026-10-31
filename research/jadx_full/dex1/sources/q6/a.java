package q6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends e {
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(f6.a aVar, int i9) {
        super(aVar);
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o.b
    public final String a() throws z5.i {
        if (((f6.a) this.f4002b).c != 60) {
            throw z5.i.d;
        }
        StringBuilder sb = new StringBuilder();
        b(sb, 5);
        f(sb, 45, 15);
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q6.e
    public final void d(StringBuilder sb, int i9) {
        switch (this.d) {
            case 0:
                sb.append("(3103)");
                break;
            default:
                if (i9 >= 10000) {
                    sb.append("(3203)");
                } else {
                    sb.append("(3202)");
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q6.e
    public final int e(int i9) {
        switch (this.d) {
            case 0:
                return i9;
            default:
                return i9 < 10000 ? i9 : i9 - 10000;
        }
    }
}
