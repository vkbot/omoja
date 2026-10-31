package p216v0;

import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: renamed from: v0.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3319f implements InterfaceC3321h {

    /* JADX INFO: renamed from: b */
    public final View f9719b;

    public C3319f(SpeedBoardService speedBoardService) {
        this.f9719b = new View(speedBoardService);
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: d */
    public final int mo1537d() {
        return 600;
    }

    @Override // p216v0.InterfaceC3321h
    public final WindowManager.LayoutParams getLayParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 776, -3);
        layoutParams.gravity = 81;
        layoutParams.x = 0;
        layoutParams.y = 30;
        return layoutParams;
    }

    @Override // p216v0.InterfaceC3321h
    public final View getView() {
        return this.f9719b;
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: a */
    public final void mo1534a() {
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: b */
    public final void mo1535b() {
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: c */
    public final void mo1536c() {
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: e */
    public final void mo1538e(float f8) {
    }

    @Override // p216v0.InterfaceC3321h
    public final void setBackgroundColor(int i10) {
    }

    @Override // p216v0.InterfaceC3321h
    public final void setHudMassageObj(HUDMassageObj hUDMassageObj) {
    }

    @Override // p216v0.InterfaceC3321h
    public final void setSpeed(int i10) {
    }
}
