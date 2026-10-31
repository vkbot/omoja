package p216v0;

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
import com.example.navistart.R;
import com.example.navistart.SpeedBoard.PPSView;
import com.example.navistart.cores.HUDMassageObj;
import com.github.anastr.speedviewlib.ImageSpeedometer;
import com.woha.pogoda.WeatherService;
import p005a4.RunnableC0010c;
import p047e0.AbstractC1387m;
import p189s0.C3129a;

/* JADX INFO: renamed from: v0.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3318e extends Fragment implements InterfaceC3320g {

    /* JADX INFO: renamed from: b */
    public PPSView f9717b;

    /* JADX INFO: renamed from: c */
    public RelativeLayout f9718c;

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: d */
    public final void mo925d(int i10) {
        new Handler(Looper.getMainLooper()).post(new RunnableC0010c(this, i10, 14));
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: g */
    public final void mo927g(int i10, String str) {
        View view;
        PPSView pPSView = this.f9717b;
        if (pPSView == null || (view = pPSView.f1593d) == null) {
            return;
        }
        view.setVisibility(0);
        pPSView.f1602m.setText(str);
        pPSView.f1592c.setImageResource(i10);
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: h */
    public final void mo928h() {
        this.f9718c.setBackgroundColor(Color.parseColor(AbstractC1387m.m2421h(new byte[]{98, 66, 14, 18, 3, -45, 108}, new byte[]{65, 7, 62, 87, 51, -106, 92, -99})));
        this.f9717b.setBackgroundColor(0);
        this.f9717b.setTexColor(ViewCompat.MEASURED_STATE_MASK);
        PPSView pPSView = this.f9717b;
        ImageSpeedometer imageSpeedometer = pPSView.f1594e;
        if (imageSpeedometer != null) {
            imageSpeedometer.setMaxSpeed(220);
            pPSView.f1594e.setStartDegree(132);
            pPSView.f1594e.setEndDegree(396);
            pPSView.f1594e.setImageSpeedometer(R.drawable.my_speed_bg13);
        }
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: o */
    public final void mo931o(HUDMassageObj hUDMassageObj) {
        PPSView pPSView = this.f9717b;
        if (pPSView != null) {
            pPSView.setHudMassageObj(hUDMassageObj);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.speedboard2, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f9717b = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (WeatherService.f2877f) {
            PPSView pPSView = this.f9717b;
            String str = WeatherService.m2205c().f5606b;
            int i10 = WeatherService.m2205c().f5608d;
            View view = pPSView.f1593d;
            if (view != null) {
                view.setVisibility(0);
                pPSView.f1602m.setText(str);
                pPSView.f1592c.setImageResource(i10);
            }
        }
        this.f9717b.setScaleX(0.0f);
        this.f9717b.setScaleY(0.0f);
        this.f9717b.setAlpha(0.0f);
        this.f9717b.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(1000L).setInterpolator(new OvershootInterpolator()).start();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f9717b = (PPSView) view.findViewById(R.id.speedView);
        this.f9718c = (RelativeLayout) view.findViewById(R.id.SpeedBoardActiBackground);
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: r */
    public final void mo933r() {
        this.f9718c.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.f9717b.setBackgroundColor(0);
        this.f9717b.setTexColor(-1);
        PPSView pPSView = this.f9717b;
        ImageSpeedometer imageSpeedometer = pPSView.f1594e;
        if (imageSpeedometer != null) {
            imageSpeedometer.setMaxSpeed(220);
            pPSView.f1594e.setStartDegree(132);
            pPSView.f1594e.setEndDegree(396);
            pPSView.f1594e.setImageSpeedometer(R.drawable.my_speed_bg14);
        }
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: a */
    public final void mo922a() {
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: q */
    public final void mo932q() {
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: f */
    public final void mo926f(String str) {
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: k */
    public final void mo929k(C3129a c3129a) {
    }

    @Override // p216v0.InterfaceC3320g
    /* JADX INFO: renamed from: l */
    public final void mo930l(int i10) {
    }
}
