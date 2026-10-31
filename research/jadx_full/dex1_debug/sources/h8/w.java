package h8;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w extends a {
    public final /* synthetic */ int d;
    public final Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(a0 a0Var) {
        super(a0Var);
        this.d = 2;
        this.e = p8.a.f4701b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.b
    public final void e(x7.d dVar) {
        switch (this.d) {
            case 0:
                b8.d dVar2 = (b8.d) this.e;
                boolean z8 = dVar instanceof e8.a;
                x7.b bVar = this.c;
                if (!z8) {
                    bVar.d(new v(dVar, dVar2));
                } else {
                    bVar.d(new u((e8.a) dVar, dVar2, 0));
                }
                break;
            case 1:
                r5.c cVar = (r5.c) this.e;
                boolean z9 = dVar instanceof e8.a;
                x7.b bVar2 = this.c;
                if (!z9) {
                    bVar2.d(new g0(dVar, cVar));
                } else {
                    bVar2.d(new u((e8.a) dVar, cVar, 1));
                }
                break;
            default:
                try {
                    ((p8.a) this.e).getClass();
                    ArrayList arrayList = new ArrayList();
                    r0 r0Var = new r0(dVar);
                    r0Var.c = arrayList;
                    this.c.d(r0Var);
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    o8.d.b(th, dVar);
                    return;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w(x7.b bVar, Object obj, int i9) {
        super(bVar);
        this.d = i9;
        this.e = obj;
    }
}
