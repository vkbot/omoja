package j5;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i extends h {
    public final l c;
    public final l d;
    public final f e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f3082f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f3083g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(l lVar, l lVar2, f fVar, a aVar, String str, Map map) {
        super(MessageType.MODAL, map);
        this.c = lVar;
        this.d = lVar2;
        this.e = fVar;
        this.f3082f = aVar;
        this.f3083g = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        f fVar = iVar.e;
        a aVar = iVar.f3082f;
        l lVar = iVar.d;
        if (hashCode() != iVar.hashCode()) {
            return false;
        }
        l lVar2 = this.d;
        if ((lVar2 == null && lVar != null) || (lVar2 != null && !lVar2.equals(lVar))) {
            return false;
        }
        a aVar2 = this.f3082f;
        if ((aVar2 == null && aVar != null) || (aVar2 != null && !aVar2.equals(aVar))) {
            return false;
        }
        f fVar2 = this.e;
        return (fVar2 != null || fVar == null) && (fVar2 == null || fVar2.equals(fVar)) && this.c.equals(iVar.c) && this.f3083g.equals(iVar.f3083g);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        l lVar = this.d;
        int iHashCode = lVar != null ? lVar.hashCode() : 0;
        a aVar = this.f3082f;
        int iHashCode2 = aVar != null ? aVar.hashCode() : 0;
        f fVar = this.e;
        return this.f3083g.hashCode() + this.c.hashCode() + iHashCode + iHashCode2 + (fVar != null ? fVar.f3079a.hashCode() : 0);
    }
}
