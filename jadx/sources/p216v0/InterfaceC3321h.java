package p216v0;

import android.location.Location;
import android.view.View;
import android.view.WindowManager;
import com.example.navistart.cores.HUDMassageObj;

/* JADX INFO: renamed from: v0.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC3321h {
    /* JADX INFO: renamed from: a */
    void mo1534a();

    /* JADX INFO: renamed from: b */
    void mo1535b();

    /* JADX INFO: renamed from: c */
    void mo1536c();

    /* JADX INFO: renamed from: d */
    int mo1537d();

    /* JADX INFO: renamed from: e */
    void mo1538e(float f8);

    WindowManager.LayoutParams getLayParams();

    View getView();

    void setBackgroundColor(int i10);

    void setHudMassageObj(HUDMassageObj hUDMassageObj);

    void setSpeed(int i10);

    /* JADX INFO: renamed from: f */
    default void mo5237f(Location location) {
    }
}
