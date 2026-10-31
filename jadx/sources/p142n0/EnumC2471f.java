package p142n0;

import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.R;

/* JADX INFO: renamed from: n0.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum EnumC2471f implements InterfaceC2470e {
    f6803c(R.string.enum_BUILT_IN_APP),
    f6804d(R.string.enum_YANDEX_WEB),
    f6805e(R.string.enum_OPEN_METEO),
    f6806f(R.string.enum_EXTERNAL_APP);


    /* JADX INFO: renamed from: b */
    public final int f6808b;

    EnumC2471f(int i10) {
        this.f6808b = i10;
    }

    @Override // p142n0.InterfaceC2470e
    /* JADX INFO: renamed from: a */
    public final Boolean mo3818a() {
        return Boolean.TRUE;
    }

    @Override // p142n0.InterfaceC2470e
    /* JADX INFO: renamed from: b */
    public final String mo3819b() {
        return AbstractC1031d.m1272b(this.f6808b);
    }
}
