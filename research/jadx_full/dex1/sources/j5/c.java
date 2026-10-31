package j5;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends h {
    public final l c;
    public final l d;
    public final f e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f3071f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f3072g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(l lVar, l lVar2, f fVar, a aVar, String str, Map map) {
        super(MessageType.BANNER, map);
        this.c = lVar;
        this.d = lVar2;
        this.e = fVar;
        this.f3071f = aVar;
        this.f3072g = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        a aVar = cVar.f3071f;
        f fVar = cVar.e;
        l lVar = cVar.d;
        if (hashCode() != cVar.hashCode()) {
            return false;
        }
        l lVar2 = this.d;
        if ((lVar2 == null && lVar != null) || (lVar2 != null && !lVar2.equals(lVar))) {
            return false;
        }
        f fVar2 = this.e;
        if ((fVar2 == null && fVar != null) || (fVar2 != null && !fVar2.equals(fVar))) {
            return false;
        }
        a aVar2 = this.f3071f;
        return (aVar2 != null || aVar == null) && (aVar2 == null || aVar2.equals(aVar)) && this.c.equals(cVar.c) && this.f3072g.equals(cVar.f3072g);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        l lVar = this.d;
        int iHashCode = lVar != null ? lVar.hashCode() : 0;
        f fVar = this.e;
        int iHashCode2 = fVar != null ? fVar.f3079a.hashCode() : 0;
        a aVar = this.f3071f;
        return this.f3072g.hashCode() + this.c.hashCode() + iHashCode + iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }
}
