package n0;

import com.example.navistart.cores.HUDMassageObj$AradarSenderType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum a implements e {
    d(2131951620, HUDMassageObj$AradarSenderType.Not),
    e(2131951617, HUDMassageObj$AradarSenderType.GENARADAR),
    /* JADX INFO: Fake field, exist only in values array */
    EF3(2131951619, HUDMassageObj$AradarSenderType.STRELKA),
    f3776f(2131951618, HUDMassageObj$AradarSenderType.HUDSPEED);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3778b;
    public final HUDMassageObj$AradarSenderType c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    a(int i9, HUDMassageObj$AradarSenderType hUDMassageObj$AradarSenderType) {
        this.f3778b = i9;
        this.c = hUDMassageObj$AradarSenderType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n0.e
    public final Boolean a() {
        return Boolean.TRUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n0.e
    public final String b() {
        return com.bumptech.glide.d.b(this.f3778b);
    }
}
