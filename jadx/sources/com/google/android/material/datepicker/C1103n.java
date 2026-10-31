package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import p142n0.C2467b;
import p157o7.RunnableC2678n0;

/* JADX INFO: renamed from: com.google.android.material.datepicker.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class C1103n<S> extends AbstractC1112w {

    /* JADX INFO: renamed from: c */
    public int f2282c;

    /* JADX INFO: renamed from: d */
    public C1089b f2283d;

    /* JADX INFO: renamed from: e */
    public C1107r f2284e;

    /* JADX INFO: renamed from: f */
    public int f2285f;

    /* JADX INFO: renamed from: g */
    public C1091c f2286g;

    /* JADX INFO: renamed from: h */
    public RecyclerView f2287h;

    /* JADX INFO: renamed from: i */
    public RecyclerView f2288i;

    /* JADX INFO: renamed from: j */
    public View f2289j;

    /* JADX INFO: renamed from: k */
    public View f2290k;

    /* JADX INFO: renamed from: l */
    public View f2291l;

    /* JADX INFO: renamed from: m */
    public View f2292m;

    /* JADX INFO: renamed from: n */
    public MaterialButton f2293n;

    /* JADX INFO: renamed from: o */
    public AccessibilityManager f2294o;

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f2282c = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            C2467b.m3822a();
            return;
        }
        this.f2283d = (C1089b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") == null) {
            this.f2284e = (C1107r) bundle.getParcelable("CURRENT_MONTH_KEY");
        } else {
            C2467b.m3822a();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f2282c);
        this.f2286g = new C1091c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        this.f2294o = (AccessibilityManager) requireContext().getSystemService("accessibility");
        C1107r c1107r = this.f2283d.f2254b;
        if (C1105p.m1805v(R.attr.windowFullscreen, contextThemeWrapper)) {
            i10 = com.example.navistart.R.layout.mtrl_calendar_vertical;
            i11 = 1;
        } else {
            i10 = com.example.navistart.R.layout.mtrl_calendar_horizontal;
            i11 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i10, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.example.navistart.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.example.navistart.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.example.navistart.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.example.navistart.R.dimen.mtrl_calendar_days_of_week_height);
        int i12 = C1108s.f2333e;
        viewInflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(com.example.navistart.R.dimen.mtrl_calendar_month_vertical_padding) * (i12 - 1)) + (resources.getDimensionPixelSize(com.example.navistart.R.dimen.mtrl_calendar_day_height) * i12) + resources.getDimensionPixelOffset(com.example.navistart.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) viewInflate.findViewById(com.example.navistart.R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new C1096g(0));
        int i13 = this.f2283d.f2258f;
        gridView.setAdapter((ListAdapter) (i13 > 0 ? new C1094e(i13) : new C1094e()));
        gridView.setNumColumns(c1107r.f2329e);
        gridView.setEnabled(false);
        this.f2288i = (RecyclerView) viewInflate.findViewById(com.example.navistart.R.id.mtrl_calendar_months);
        this.f2288i.setLayoutManager(new C1097h(this, getContext(), i11, i11));
        this.f2288i.setTag("MONTHS_VIEW_GROUP_TAG");
        C1111v c1111v = new C1111v(contextThemeWrapper, this.f2283d, new C1098i(this));
        this.f2288i.setAdapter(c1111v);
        int integer = contextThemeWrapper.getResources().getInteger(com.example.navistart.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.example.navistart.R.id.mtrl_calendar_year_selector_frame);
        this.f2287h = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f2287h.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f2287h.setAdapter(new C1092c0(this));
            RecyclerView recyclerView2 = this.f2287h;
            C1099j c1099j = new C1099j();
            AbstractC1088a0.m1800c(null);
            AbstractC1088a0.m1800c(null);
            recyclerView2.addItemDecoration(c1099j);
        }
        View viewFindViewById = viewInflate.findViewById(com.example.navistart.R.id.month_navigation_fragment_toggle);
        C1089b c1089b = c1111v.f2342a;
        if (viewFindViewById != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(com.example.navistart.R.id.month_navigation_fragment_toggle);
            this.f2293n = materialButton;
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            ViewCompat.setAccessibilityDelegate(this.f2293n, new C1100k(this));
            View viewFindViewById2 = viewInflate.findViewById(com.example.navistart.R.id.month_navigation_previous);
            this.f2289j = viewFindViewById2;
            viewFindViewById2.setTag("NAVIGATION_PREV_TAG");
            View viewFindViewById3 = viewInflate.findViewById(com.example.navistart.R.id.month_navigation_next);
            this.f2290k = viewFindViewById3;
            viewFindViewById3.setTag("NAVIGATION_NEXT_TAG");
            this.f2291l = viewInflate.findViewById(com.example.navistart.R.id.mtrl_calendar_year_selector_frame);
            this.f2292m = viewInflate.findViewById(com.example.navistart.R.id.mtrl_calendar_day_selector_frame);
            m1802u(1);
            this.f2293n.setText(this.f2284e.m1809s());
            this.f2288i.addOnScrollListener(new C1101l(this, c1111v));
            this.f2293n.setOnClickListener(new ViewOnClickListenerC1102m(0, this));
            this.f2290k.setOnClickListener(new ViewOnClickListenerC1095f(this, c1111v, 1));
            this.f2289j.setOnClickListener(new ViewOnClickListenerC1095f(this, c1111v, 0));
            m1803v(c1089b.f2254b.m1810t(this.f2284e));
        }
        if (!C1105p.m1805v(R.attr.windowFullscreen, contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.f2288i);
        }
        this.f2288i.scrollToPosition(c1089b.f2254b.m1810t(this.f2284e));
        ViewCompat.setAccessibilityDelegate(this.f2288i, new C1096g(1));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f2282c);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f2283d);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f2284e);
    }

    /* JADX INFO: renamed from: t */
    public final void m1801t(C1107r c1107r) {
        C1111v c1111v = (C1111v) this.f2288i.getAdapter();
        int iM1810t = c1111v.f2342a.f2254b.m1810t(c1107r);
        AccessibilityManager accessibilityManager = this.f2294o;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            int iM1810t2 = iM1810t - c1111v.f2342a.f2254b.m1810t(this.f2284e);
            boolean z9 = Math.abs(iM1810t2) > 3;
            boolean z10 = iM1810t2 > 0;
            this.f2284e = c1107r;
            if (z9 && z10) {
                this.f2288i.scrollToPosition(iM1810t - 3);
                this.f2288i.post(new RunnableC2678n0(this, iM1810t, 2));
            } else {
                RecyclerView recyclerView = this.f2288i;
                if (z9) {
                    recyclerView.scrollToPosition(iM1810t + 3);
                    this.f2288i.post(new RunnableC2678n0(this, iM1810t, 2));
                } else {
                    recyclerView.post(new RunnableC2678n0(this, iM1810t, 2));
                }
            }
        } else {
            this.f2284e = c1107r;
            this.f2288i.scrollToPosition(iM1810t);
        }
        m1803v(iM1810t);
    }

    /* JADX INFO: renamed from: u */
    public final void m1802u(int i10) {
        this.f2285f = i10;
        if (i10 == 2) {
            this.f2287h.getLayoutManager().scrollToPosition(this.f2284e.f2328d - ((C1092c0) this.f2287h.getAdapter()).f2264a.f2283d.f2254b.f2328d);
            this.f2291l.setVisibility(0);
            this.f2292m.setVisibility(8);
            this.f2289j.setVisibility(8);
            this.f2290k.setVisibility(8);
            return;
        }
        if (i10 == 1) {
            this.f2291l.setVisibility(8);
            this.f2292m.setVisibility(0);
            this.f2289j.setVisibility(0);
            this.f2290k.setVisibility(0);
            m1801t(this.f2284e);
        }
    }

    /* JADX INFO: renamed from: v */
    public final void m1803v(int i10) {
        this.f2290k.setEnabled(i10 + 1 < this.f2288i.getAdapter().getItemCount());
        this.f2289j.setEnabled(i10 - 1 >= 0);
    }
}
