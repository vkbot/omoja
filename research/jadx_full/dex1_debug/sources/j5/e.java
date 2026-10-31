package j5;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends h {
    public final l c;
    public final l d;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f3075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f3076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f3077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f3078i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(l lVar, l lVar2, f fVar, f fVar2, String str, a aVar, a aVar2, Map map) {
        super(MessageType.CARD, map);
        this.c = lVar;
        this.d = lVar2;
        this.f3077h = fVar;
        this.f3078i = fVar2;
        this.e = str;
        this.f3075f = aVar;
        this.f3076g = aVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        f fVar = eVar.f3078i;
        f fVar2 = eVar.f3077h;
        a aVar = eVar.f3076g;
        l lVar = eVar.d;
        if (hashCode() != eVar.hashCode()) {
            return false;
        }
        l lVar2 = this.d;
        if ((lVar2 == null && lVar != null) || (lVar2 != null && !lVar2.equals(lVar))) {
            return false;
        }
        a aVar2 = this.f3076g;
        if ((aVar2 == null && aVar != null) || (aVar2 != null && !aVar2.equals(aVar))) {
            return false;
        }
        f fVar3 = this.f3077h;
        if ((fVar3 == null && fVar2 != null) || (fVar3 != null && !fVar3.equals(fVar2))) {
            return false;
        }
        f fVar4 = this.f3078i;
        return (fVar4 != null || fVar == null) && (fVar4 == null || fVar4.equals(fVar)) && this.c.equals(eVar.c) && this.f3075f.equals(eVar.f3075f) && this.e.equals(eVar.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        l lVar = this.d;
        int iHashCode = lVar != null ? lVar.hashCode() : 0;
        a aVar = this.f3076g;
        int iHashCode2 = aVar != null ? aVar.hashCode() : 0;
        f fVar = this.f3077h;
        int iHashCode3 = fVar != null ? fVar.f3079a.hashCode() : 0;
        f fVar2 = this.f3078i;
        return this.f3075f.hashCode() + this.e.hashCode() + this.c.hashCode() + iHashCode + iHashCode2 + iHashCode3 + (fVar2 != null ? fVar2.f3079a.hashCode() : 0);
    }
}
