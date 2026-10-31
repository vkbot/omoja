package a6;

import f6.d;
import java.util.List;
import java.util.Map;
import z5.e;
import z5.i;
import z5.k;
import z5.m;
import z5.n;
import z5.o;
import z5.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements k {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z5.k
    public final m a(z5.b bVar, Map map) throws e, i {
        o[] oVarArr;
        i iVar;
        o[] oVarArr2;
        e eVar;
        o[] oVarArr3;
        p pVar;
        c6.b bVar2 = new c6.b(bVar.a());
        d dVarA = null;
        try {
            a aVarA = bVar2.a(false);
            oVarArr = (o[]) aVarA.e;
            try {
                eVar = null;
                dVarA = new b6.a().a(aVarA);
                oVarArr2 = oVarArr;
                iVar = null;
            } catch (e e) {
                e = e;
                eVar = e;
                oVarArr2 = oVarArr;
                iVar = null;
            } catch (i e6) {
                e = e6;
                o[] oVarArr4 = oVarArr;
                iVar = e;
                oVarArr2 = oVarArr4;
                eVar = null;
            }
        } catch (e e9) {
            e = e9;
            oVarArr = null;
        } catch (i e10) {
            e = e10;
            oVarArr = null;
        }
        if (dVarA == null) {
            try {
                a aVarA2 = bVar2.a(true);
                o[] oVarArr5 = (o[]) aVarA2.e;
                dVarA = new b6.a().a(aVarA2);
                oVarArr3 = oVarArr5;
            } catch (e | i e11) {
                if (iVar != null) {
                    throw iVar;
                }
                if (eVar != null) {
                    throw eVar;
                }
                throw e11;
            }
        } else {
            oVarArr3 = oVarArr2;
        }
        if (map != null && (pVar = (p) map.get(z5.d.f6320k)) != null) {
            for (o oVar : oVarArr3) {
                pVar.a(oVar);
            }
        }
        String str = dVarA.f2261a;
        byte[] bArr = (byte[]) dVarA.d;
        System.currentTimeMillis();
        m mVar = new m(str, bArr, oVarArr3, z5.a.f6299b, 0);
        List list = (List) dVarA.f2263f;
        if (list != null) {
            mVar.b(n.c, list);
        }
        String str2 = (String) dVarA.e;
        if (str2 != null) {
            mVar.b(n.d, str2);
        }
        return mVar;
    }

    @Override // z5.k
    public final void reset() {
    }
}
