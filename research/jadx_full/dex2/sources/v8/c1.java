package v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class c1 extends h1 {
    public final boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c1() {
        h1 h1VarI;
        super(true);
        boolean z = true;
        z(null);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = h1.c;
        h hVar = (h) atomicReferenceFieldUpdater.get(this);
        i iVar = hVar instanceof i ? (i) hVar : null;
        if (iVar == null || (h1VarI = iVar.i()) == null) {
            z = false;
            break;
        }
        while (!h1VarI.t()) {
            h hVar2 = (h) atomicReferenceFieldUpdater.get(h1VarI);
            i iVar2 = hVar2 instanceof i ? (i) hVar2 : null;
            if (iVar2 == null || (h1VarI = iVar2.i()) == null) {
                z = false;
                break;
            }
        }
        this.d = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h1
    public final boolean t() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.h1
    public final boolean u() {
        return true;
    }
}
