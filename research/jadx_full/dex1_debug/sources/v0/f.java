package v0;

import android.os.Build$VERSION;
import android.view.View;
import android.view.WindowManager$LayoutParams;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f5505b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(SpeedBoardService speedBoardService) {
        this.f5505b = new View(speedBoardService);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final int d() {
        return 600;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final WindowManager$LayoutParams getLayParams() {
        WindowManager$LayoutParams windowManager$LayoutParams = new WindowManager$LayoutParams(-2, -2, Build$VERSION.SDK_INT >= 26 ? 2038 : 2002, 776, -3);
        windowManager$LayoutParams.gravity = 81;
        windowManager$LayoutParams.x = 0;
        windowManager$LayoutParams.y = 30;
        return windowManager$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.h
    public final View getView() {
        return this.f5505b;
    }

    @Override // v0.h
    public final void a() {
    }

    @Override // v0.h
    public final void b() {
    }

    @Override // v0.h
    public final void c() {
    }

    @Override // v0.h
    public final void e(float f8) {
    }

    @Override // v0.h
    public final void setBackgroundColor(int i9) {
    }

    @Override // v0.h
    public final void setHudMassageObj(HUDMassageObj hUDMassageObj) {
    }

    @Override // v0.h
    public final void setSpeed(int i9) {
    }
}
