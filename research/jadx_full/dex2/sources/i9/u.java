package i9;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class u extends a {
    public final e9.b a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(e9.b bVar) {
        this.a = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h
    public void b(h9.b bVar, Object obj) {
        int iH = h(obj);
        g9.e eVarA = a();
        h9.d dVarBeginCollection = bVar.beginCollection(eVarA, iH);
        Iterator itG = g(obj);
        for (int i = 0; i < iH; i++) {
            dVarBeginCollection.encodeSerializableElement(a(), i, this.a, itG.next());
        }
        dVarBeginCollection.endStructure(eVarA);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final void j(h9.c cVar, Object obj, int i, int i2) {
        if (i2 < 0) {
            j1.i.k("Size must be known in advance when using READ_ALL");
            return;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            k(cVar, i + i3, obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public void k(h9.c cVar, int i, Object obj) {
        n(i, obj, cVar.decodeSerializableElement(a(), i, this.a, null));
    }

    public abstract void n(int i, Object obj, Object obj2);
}
