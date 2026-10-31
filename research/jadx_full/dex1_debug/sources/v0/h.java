package v0;

import android.location.Location;
import android.view.View;
import android.view.WindowManager$LayoutParams;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface h {
    void a();

    void b();

    void c();

    int d();

    void e(float f8);

    WindowManager$LayoutParams getLayParams();

    View getView();

    void setBackgroundColor(int i9);

    void setHudMassageObj(HUDMassageObj hUDMassageObj);

    void setSpeed(int i9);

    default void f(Location location) {
    }
}
