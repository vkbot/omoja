package v0;

import android.os.Build$VERSION;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager$LayoutParams;
import android.widget.FrameLayout;
import com.example.navistart.cores.HUDMassageObj;
import com.github.anastr.speedviewlib.ImageSpeedometer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends FrameLayout implements h {
    public static int d;
    public static int e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImageSpeedometer f5503b;
    public ImageSpeedometer c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void a() {
        setVisibility(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void b() {
        setVisibility(8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final void c() {
        h0.b.a();
        h0.b.a();
        int speed = h0.b.d().getSpeed();
        h0.b.a();
        int rpm = h0.b.d().getRPM();
        if (d != speed) {
            d = speed;
            setSpeed(speed);
        }
        if (e != rpm) {
            e = rpm;
            setRPM(rpm);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final int d() {
        return 500;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public WindowManager$LayoutParams getLayParams() {
        WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(-1, -1, Build$VERSION.SDK_INT >= 26 ? 2038 : 2002, 776, -3);
        windowManager$LayoutParams.gravity = 17;
        return windowManager$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRPM(int i9) {
        if (this.c != null) {
            new Handler(Looper.getMainLooper()).post(new i7.f(this, i9 / 1000.0f, 2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public void setSpeed(int i9) {
        if (this.f5503b != null) {
            new Handler(Looper.getMainLooper()).post(new a4.c(this, i9, 13));
        }
    }

    @Override // v0.h
    public View getView() {
        return this;
    }

    @Override // v0.h
    public final void e(float f8) {
    }

    @Override // v0.h
    public void setHudMassageObj(HUDMassageObj hUDMassageObj) {
    }
}
