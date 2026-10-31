package p142n0;

import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: renamed from: n0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC2466a implements InterfaceC2470e {
    f6673d(R.string.AradarApp_Not_Run_APP, HUDMassageObj.AradarSenderType.Not),
    f6674e(R.string.AradarApp_BUILT_IN_APP, HUDMassageObj.AradarSenderType.GENARADAR),
    /* JADX INFO: Fake field, exist only in values array */
    EF3(R.string.AradarApp_EXTERNAL_APP_STR, HUDMassageObj.AradarSenderType.STRELKA),
    f6675f(R.string.AradarApp_EXTERNAL_APP_HUDSPEED, HUDMassageObj.AradarSenderType.HUDSPEED);


    /* JADX INFO: renamed from: b */
    public final int f6677b;

    /* JADX INFO: renamed from: c */
    public final HUDMassageObj.AradarSenderType f6678c;

    EnumC2466a(int i10, HUDMassageObj.AradarSenderType aradarSenderType) {
        this.f6677b = i10;
        this.f6678c = aradarSenderType;
    }

    @Override // p142n0.InterfaceC2470e
    /* JADX INFO: renamed from: a */
    public final Boolean mo3818a() {
        return Boolean.TRUE;
    }

    @Override // p142n0.InterfaceC2470e
    /* JADX INFO: renamed from: b */
    public final String mo3819b() {
        return AbstractC1031d.m1272b(this.f6677b);
    }
}
