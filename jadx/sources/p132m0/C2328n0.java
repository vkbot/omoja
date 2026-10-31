package p132m0;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.activity.RunnableC0131f;
import androidx.navigation.ViewOnClickListenerC0675c;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.example.navistart.DialogUni.Fragmenti.MaxHeightRecyclerView;
import com.example.navistart.R;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p121l0.C2195b;

/* JADX INFO: renamed from: m0.n0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2328n0 extends C2195b {

    /* JADX INFO: renamed from: k */
    public static final String f6237k = AbstractC1387m.m2421h(new byte[]{-124, 68, 57, -114, 103, 63, -63, 58, -89, 95, 20, -110, 100, 47}, new byte[]{-62, 49, 85, -30, 20, 92, -77, 95});

    /* JADX INFO: renamed from: b */
    public final Handler f6238b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c */
    public volatile int f6239c;

    /* JADX INFO: renamed from: d */
    public boolean f6240d;

    /* JADX INFO: renamed from: e */
    public String f6241e;

    /* JADX INFO: renamed from: f */
    public MaxHeightRecyclerView f6242f;

    /* JADX INFO: renamed from: g */
    public TextView f6243g;

    /* JADX INFO: renamed from: h */
    public View f6244h;

    /* JADX INFO: renamed from: i */
    public View f6245i;

    /* JADX INFO: renamed from: j */
    public C2323m0 f6246j;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_fullscreen_apps, viewGroup, false);
        this.f6239c++;
        this.f6240d = false;
        float f8 = getResources().getDisplayMetrics().density;
        viewInflate.setLayoutParams(new ViewGroup.LayoutParams(Math.min((int) (600.0f * f8), Math.max(1, getResources().getDisplayMetrics().widthPixels - ((int) (64.0f * f8)))), -2));
        MaxHeightRecyclerView maxHeightRecyclerView = (MaxHeightRecyclerView) viewInflate.findViewById(R.id.fullscreenApps);
        this.f6242f = maxHeightRecyclerView;
        maxHeightRecyclerView.setMaxHeight(Math.max((int) (96.0f * f8), Math.min((int) (480.0f * f8), getResources().getDisplayMetrics().heightPixels - ((int) (f8 * 240.0f)))));
        this.f6242f.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.f6243g = (TextView) viewInflate.findViewById(R.id.fullscreenStatus);
        this.f6244h = viewInflate.findViewById(R.id.fullscreenProgress);
        this.f6245i = viewInflate.findViewById(R.id.fullscreenDescription);
        C2323m0 c2323m0 = new C2323m0(this);
        this.f6246j = c2323m0;
        this.f6242f.setAdapter(c2323m0);
        viewInflate.findViewById(R.id.fullscreenBack).setOnClickListener(new ViewOnClickListenerC0675c(15, this));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.f6239c++;
        this.f6238b.removeCallbacksAndMessages(null);
        MaxHeightRecyclerView maxHeightRecyclerView = this.f6242f;
        if (maxHeightRecyclerView != null) {
            maxHeightRecyclerView.setAdapter(null);
        }
        this.f6242f = null;
        this.f6243g = null;
        this.f6244h = null;
        this.f6245i = null;
        this.f6246j = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f6240d || this.f6242f == null) {
            return;
        }
        this.f6240d = true;
        int i10 = this.f6239c;
        Context applicationContext = requireContext().getApplicationContext();
        this.f6244h.setVisibility(0);
        this.f6243g.setVisibility(0);
        this.f6243g.setText(R.string.fullscreen_apps_loading);
        this.f6242f.setVisibility(8);
        this.f6245i.setVisibility(8);
        AbstractC1434w.m2482c(-1, f6237k).execute(new RunnableC0131f(this, applicationContext, i10, 6));
    }

    /* JADX INFO: renamed from: t */
    public final boolean m3708t(int i10) {
        return i10 == this.f6239c && isAdded() && this.f6242f != null;
    }

    /* JADX INFO: renamed from: u */
    public final void m3709u(int i10) {
        if (m3708t(i10)) {
            this.f6240d = false;
            this.f6242f.setVisibility(8);
            this.f6245i.setVisibility(8);
            this.f6244h.setVisibility(8);
            this.f6243g.setVisibility(0);
            this.f6243g.setText(R.string.fullscreen_apps_incompatible);
        }
    }
}
