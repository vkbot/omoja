package q6;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends d {
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(f6.a aVar, int i9) {
        super(aVar);
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o.b
    public final String a() throws z5.i {
        switch (this.d) {
            case 0:
                a5.h hVar = (a5.h) this.c;
                if (((f6.a) this.f4002b).c < 48) {
                    throw z5.i.d;
                }
                StringBuilder sb = new StringBuilder();
                b(sb, 8);
                int iH = a5.h.h(48, 2, (f6.a) hVar.c);
                sb.append("(392");
                sb.append(iH);
                sb.append(')');
                sb.append(hVar.f(50, null).f4875b);
                return sb.toString();
            case 1:
                a5.h hVar2 = (a5.h) this.c;
                if (((f6.a) this.f4002b).c < 48) {
                    throw z5.i.d;
                }
                StringBuilder sb2 = new StringBuilder();
                b(sb2, 8);
                int iH2 = a5.h.h(48, 2, (f6.a) hVar2.c);
                sb2.append("(393");
                sb2.append(iH2);
                sb2.append(')');
                int iH3 = a5.h.h(50, 10, (f6.a) hVar2.c);
                if (iH3 / 100 == 0) {
                    sb2.append('0');
                }
                if (iH3 / 10 == 0) {
                    sb2.append('0');
                }
                sb2.append(iH3);
                sb2.append(hVar2.f(60, null).f4875b);
                return sb2.toString();
            default:
                StringBuilder sbU = ai.onnxruntime.a.u("(01)");
                int length = sbU.length();
                a5.h hVar3 = (a5.h) this.c;
                sbU.append(a5.h.h(4, 4, (f6.a) hVar3.c));
                c(sbU, 8, length);
                return hVar3.d(sbU, 48);
        }
    }
}
