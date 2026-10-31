package v0;

import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.cores.HUDMassageObj;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import com.woha.pogoda.WeatherService;
import e0.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class e extends Fragment implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PPSView f5504b;
    public RelativeLayout c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void d(int i9) {
        new Handler(Looper.getMainLooper()).post(new a4.c(this, i9, 14));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void g(int i9, String str) {
        View view;
        PPSView pPSView = this.f5504b;
        if (pPSView == null || (view = pPSView.d) == null) {
            return;
        }
        view.setVisibility(0);
        pPSView.f819m.setText(str);
        pPSView.c.setImageResource(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void h() {
        this.c.setBackgroundColor(Color.parseColor(m.h(new byte[]{98, 66, 14, 18, 3, -45, 108}, new byte[]{65, 7, 62, 87, 51, -106, 92, -99})));
        this.f5504b.setBackgroundColor(0);
        this.f5504b.setTexColor(ViewCompat.MEASURED_STATE_MASK);
        PPSView pPSView = this.f5504b;
        ImageSpeedometer imageSpeedometer = pPSView.e;
        if (imageSpeedometer != null) {
            imageSpeedometer.setMaxSpeed(220);
            pPSView.e.setStartDegree(132);
            pPSView.e.setEndDegree(396);
            pPSView.e.setImageSpeedometer(2131165655);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void o(HUDMassageObj hUDMassageObj) {
        PPSView pPSView = this.f5504b;
        if (pPSView != null) {
            pPSView.setHudMassageObj(hUDMassageObj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2131493133, viewGroup, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f5504b = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (WeatherService.f1624f) {
            PPSView pPSView = this.f5504b;
            String str = WeatherService.c().f3201b;
            int i9 = WeatherService.c().d;
            View view = pPSView.d;
            if (view != null) {
                view.setVisibility(0);
                pPSView.f819m.setText(str);
                pPSView.c.setImageResource(i9);
            }
        }
        this.f5504b.setScaleX(0.0f);
        this.f5504b.setScaleY(0.0f);
        this.f5504b.setAlpha(0.0f);
        this.f5504b.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(1000L).setInterpolator(new OvershootInterpolator()).start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f5504b = (PPSView) view.findViewById(2131297386);
        this.c = (RelativeLayout) view.findViewById(2131296349);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v0.g
    public final void r() {
        this.c.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.f5504b.setBackgroundColor(0);
        this.f5504b.setTexColor(-1);
        PPSView pPSView = this.f5504b;
        ImageSpeedometer imageSpeedometer = pPSView.e;
        if (imageSpeedometer != null) {
            imageSpeedometer.setMaxSpeed(220);
            pPSView.e.setStartDegree(132);
            pPSView.e.setEndDegree(396);
            pPSView.e.setImageSpeedometer(2131165656);
        }
    }

    @Override // v0.g
    public final void a() {
    }

    @Override // v0.g
    public final void q() {
    }

    @Override // v0.g
    public final void f(String str) {
    }

    @Override // v0.g
    public final void k(s0.a aVar) {
    }

    @Override // v0.g
    public final void l(int i9) {
    }
}
