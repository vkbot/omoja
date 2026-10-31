package com.google.android.material.datepicker;

import android.R$attr;
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
import androidx.annotation.RestrictTo$Scope;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import o7.n0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public final class n<S> extends w {
    public int c;
    public b d;
    public r e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1253f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c f1254g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RecyclerView f1255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RecyclerView f1256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f1257j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f1258k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f1259l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f1260m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public MaterialButton f1261n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public AccessibilityManager f1262o;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.c = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            n0.b.a();
            return;
        }
        this.d = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") == null) {
            this.e = (r) bundle.getParcelable("CURRENT_MONTH_KEY");
        } else {
            n0.b.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i9;
        int i10;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.c);
        this.f1254g = new c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        this.f1262o = (AccessibilityManager) requireContext().getSystemService("accessibility");
        r rVar = this.d.f1235b;
        if (p.v(R$attr.windowFullscreen, contextThemeWrapper)) {
            i9 = 2131493079;
            i10 = 1;
        } else {
            i9 = 2131493074;
            i10 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i9, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131100535) + resources.getDimensionPixelOffset(2131100537) + resources.getDimensionPixelSize(2131100536);
        int dimensionPixelSize = resources.getDimensionPixelSize(2131100520);
        int i11 = s.e;
        viewInflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(2131100534) * (i11 - 1)) + (resources.getDimensionPixelSize(2131100515) * i11) + resources.getDimensionPixelOffset(2131100512));
        GridView gridView = (GridView) viewInflate.findViewById(2131297096);
        ViewCompat.setAccessibilityDelegate(gridView, new g(0));
        int i12 = this.d.f1236f;
        gridView.setAdapter((ListAdapter) (i12 > 0 ? new e(i12) : new e()));
        gridView.setNumColumns(rVar.e);
        gridView.setEnabled(false);
        this.f1256i = (RecyclerView) viewInflate.findViewById(2131297099);
        this.f1256i.setLayoutManager(new h(this, getContext(), i10, i10));
        this.f1256i.setTag("MONTHS_VIEW_GROUP_TAG");
        v vVar = new v(contextThemeWrapper, this.d, new i(this));
        this.f1256i.setAdapter(vVar);
        int integer = contextThemeWrapper.getResources().getInteger(2131361847);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(2131297102);
        this.f1255h = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f1255h.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f1255h.setAdapter(new c0(this));
            RecyclerView recyclerView2 = this.f1255h;
            j jVar = new j();
            a0.c(null);
            a0.c(null);
            recyclerView2.addItemDecoration(jVar);
        }
        View viewFindViewById = viewInflate.findViewById(2131297086);
        b bVar = vVar.f1292a;
        if (viewFindViewById != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(2131297086);
            this.f1261n = materialButton;
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            ViewCompat.setAccessibilityDelegate(this.f1261n, new k(this));
            View viewFindViewById2 = viewInflate.findViewById(2131297088);
            this.f1257j = viewFindViewById2;
            viewFindViewById2.setTag("NAVIGATION_PREV_TAG");
            View viewFindViewById3 = viewInflate.findViewById(2131297087);
            this.f1258k = viewFindViewById3;
            viewFindViewById3.setTag("NAVIGATION_NEXT_TAG");
            this.f1259l = viewInflate.findViewById(2131297102);
            this.f1260m = viewInflate.findViewById(2131297095);
            u(1);
            this.f1261n.setText(this.e.s());
            this.f1256i.addOnScrollListener(new l(this, vVar));
            this.f1261n.setOnClickListener(new m(0, this));
            this.f1258k.setOnClickListener(new f(this, vVar, 1));
            this.f1257j.setOnClickListener(new f(this, vVar, 0));
            v(bVar.f1235b.t(this.e));
        }
        if (!p.v(R$attr.windowFullscreen, contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.f1256i);
        }
        this.f1256i.scrollToPosition(bVar.f1235b.t(this.e));
        ViewCompat.setAccessibilityDelegate(this.f1256i, new g(1));
        return viewInflate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.c);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.d);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(r rVar) {
        v vVar = (v) this.f1256i.getAdapter();
        int iT = vVar.f1292a.f1235b.t(rVar);
        AccessibilityManager accessibilityManager = this.f1262o;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            int iT2 = iT - vVar.f1292a.f1235b.t(this.e);
            boolean z8 = Math.abs(iT2) > 3;
            boolean z9 = iT2 > 0;
            this.e = rVar;
            if (z8 && z9) {
                this.f1256i.scrollToPosition(iT - 3);
                this.f1256i.post(new n0(this, iT, 2));
            } else {
                RecyclerView recyclerView = this.f1256i;
                if (z8) {
                    recyclerView.scrollToPosition(iT + 3);
                    this.f1256i.post(new n0(this, iT, 2));
                } else {
                    recyclerView.post(new n0(this, iT, 2));
                }
            }
        } else {
            this.e = rVar;
            this.f1256i.scrollToPosition(iT);
        }
        v(iT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(int i9) {
        this.f1253f = i9;
        if (i9 == 2) {
            this.f1255h.getLayoutManager().scrollToPosition(this.e.d - ((c0) this.f1255h.getAdapter()).f1242a.d.f1235b.d);
            this.f1259l.setVisibility(0);
            this.f1260m.setVisibility(8);
            this.f1257j.setVisibility(8);
            this.f1258k.setVisibility(8);
            return;
        }
        if (i9 == 1) {
            this.f1259l.setVisibility(8);
            this.f1260m.setVisibility(0);
            this.f1257j.setVisibility(0);
            this.f1258k.setVisibility(0);
            t(this.e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void v(int i9) {
        this.f1258k.setEnabled(i9 + 1 < this.f1256i.getAdapter().getItemCount());
        this.f1257j.setEnabled(i9 - 1 >= 0);
    }
}
