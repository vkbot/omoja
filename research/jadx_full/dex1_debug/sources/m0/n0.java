package m0;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.example.navistart.DialogUni.Fragmenti.MaxHeightRecyclerView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n0 extends l0.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f3526k = e0.m.h(new byte[]{-124, 68, 57, -114, 103, 63, -63, 58, -89, 95, 20, -110, 100, 47}, new byte[]{-62, 49, 85, -30, 20, 92, -77, 95});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f3527b = new Handler(Looper.getMainLooper());
    public volatile int c;
    public boolean d;
    public String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MaxHeightRecyclerView f3528f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f3529g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View f3530h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f3531i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public m0 f3532j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(2131492954, viewGroup, false);
        this.c++;
        this.d = false;
        float f8 = getResources().getDisplayMetrics().density;
        viewInflate.setLayoutParams(new ViewGroup$LayoutParams(Math.min((int) (600.0f * f8), Math.max(1, getResources().getDisplayMetrics().widthPixels - ((int) (64.0f * f8)))), -2));
        MaxHeightRecyclerView maxHeightRecyclerView = (MaxHeightRecyclerView) viewInflate.findViewById(2131296788);
        this.f3528f = maxHeightRecyclerView;
        maxHeightRecyclerView.setMaxHeight(Math.max((int) (96.0f * f8), Math.min((int) (480.0f * f8), getResources().getDisplayMetrics().heightPixels - ((int) (f8 * 240.0f)))));
        this.f3528f.setLayoutManager(new LinearLayoutManager(requireContext()));
        this.f3529g = (TextView) viewInflate.findViewById(2131296795);
        this.f3530h = viewInflate.findViewById(2131296794);
        this.f3531i = viewInflate.findViewById(2131296791);
        m0 m0Var = new m0(this);
        this.f3532j = m0Var;
        this.f3528f.setAdapter(m0Var);
        viewInflate.findViewById(2131296789).setOnClickListener(new androidx.navigation.c(15, this));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.c++;
        this.f3527b.removeCallbacksAndMessages(null);
        MaxHeightRecyclerView maxHeightRecyclerView = this.f3528f;
        if (maxHeightRecyclerView != null) {
            maxHeightRecyclerView.setAdapter(null);
        }
        this.f3528f = null;
        this.f3529g = null;
        this.f3530h = null;
        this.f3531i = null;
        this.f3532j = null;
        super.onDestroyView();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.d || this.f3528f == null) {
            return;
        }
        this.d = true;
        int i9 = this.c;
        Context applicationContext = requireContext().getApplicationContext();
        this.f3530h.setVisibility(0);
        this.f3529g.setVisibility(0);
        this.f3529g.setText(2131952007);
        this.f3528f.setVisibility(8);
        this.f3531i.setVisibility(8);
        e0.w.c(-1, f3526k).execute(new androidx.activity.f(this, applicationContext, i9, 6));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean t(int i9) {
        return i9 == this.c && isAdded() && this.f3528f != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(int i9) {
        if (t(i9)) {
            this.d = false;
            this.f3528f.setVisibility(8);
            this.f3531i.setVisibility(8);
            this.f3530h.setVisibility(8);
            this.f3529g.setVisibility(0);
            this.f3529g.setText(2131952003);
        }
    }
}
