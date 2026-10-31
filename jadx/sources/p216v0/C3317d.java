package p216v0;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.example.navistart.cores.HUDMassageObj;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import p005a4.RunnableC0010c;
import p078h0.C1652b;
import p094i7.RunnableC1757f;

/* JADX INFO: renamed from: v0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3317d extends FrameLayout implements InterfaceC3321h {

    /* JADX INFO: renamed from: d */
    public static int f9713d;

    /* JADX INFO: renamed from: e */
    public static int f9714e;

    /* JADX INFO: renamed from: b */
    public ImageSpeedometer f9715b;

    /* JADX INFO: renamed from: c */
    public ImageSpeedometer f9716c;

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: a */
    public final void mo1534a() {
        setVisibility(0);
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: b */
    public final void mo1535b() {
        setVisibility(8);
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: c */
    public final void mo1536c() {
        C1652b.m2734a();
        C1652b.m2734a();
        int speed = C1652b.m2736d().getSpeed();
        C1652b.m2734a();
        int rpm = C1652b.m2736d().getRPM();
        if (f9713d != speed) {
            f9713d = speed;
            setSpeed(speed);
        }
        if (f9714e != rpm) {
            f9714e = rpm;
            setRPM(rpm);
        }
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: d */
    public final int mo1537d() {
        return 500;
    }

    @Override // p216v0.InterfaceC3321h
    public WindowManager.LayoutParams getLayParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 776, -3);
        layoutParams.gravity = 17;
        return layoutParams;
    }

    public void setRPM(int i10) {
        if (this.f9716c != null) {
            new Handler(Looper.getMainLooper()).post(new RunnableC1757f(this, i10 / 1000.0f, 2));
        }
    }

    @Override // p216v0.InterfaceC3321h
    public void setSpeed(int i10) {
        if (this.f9715b != null) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0010c(this, i10, 13));
        }
    }

    @Override // p216v0.InterfaceC3321h
    public View getView() {
        return this;
    }

    @Override // p216v0.InterfaceC3321h
    /* JADX INFO: renamed from: e */
    public final void mo1538e(float f8) {
    }

    @Override // p216v0.InterfaceC3321h
    public void setHudMassageObj(HUDMassageObj hUDMassageObj) {
    }
}
