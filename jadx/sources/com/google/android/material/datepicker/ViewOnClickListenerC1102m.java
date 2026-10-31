package com.google.android.material.datepicker;

import android.animation.AnimatorSet;
import android.os.Handler;
import android.view.View;
import com.example.navistart.R;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
import p256z1.RunnableC3699g;
import p256z1.RunnableC3700h;

/* JADX INFO: renamed from: com.google.android.material.datepicker.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC1102m implements View.OnClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f2280b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f2281c;

    public /* synthetic */ ViewOnClickListenerC1102m(int i10, Object obj) {
        this.f2280b = i10;
        this.f2281c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2280b) {
            case 0:
                C1103n c1103n = (C1103n) this.f2281c;
                int i10 = c1103n.f2285f;
                if (i10 == 2) {
                    c1103n.m1802u(1);
                    c1103n.f2288i.announceForAccessibility(c1103n.getString(R.string.mtrl_picker_toggled_to_day_selection));
                } else if (i10 == 1) {
                    c1103n.m1802u(2);
                    c1103n.f2287h.announceForAccessibility(c1103n.getString(R.string.mtrl_picker_toggled_to_year_selection));
                }
                break;
            case 1:
                ((Runnable) this.f2281c).run();
                break;
            case 2:
                FloatingActionButton floatingActionButton = (FloatingActionButton) this.f2281c;
                View.OnClickListener onClickListener = floatingActionButton.f1928q;
                if (onClickListener != null) {
                    onClickListener.onClick(floatingActionButton);
                }
                break;
            default:
                FloatingActionMenu floatingActionMenu = (FloatingActionMenu) this.f2281c;
                boolean z9 = floatingActionMenu.f1950M;
                boolean z10 = floatingActionMenu.f1980k;
                if (z10) {
                    floatingActionMenu.m1695a(z9);
                } else {
                    Handler handler = floatingActionMenu.f1983m;
                    if (!z10) {
                        if (floatingActionMenu.f1973g0 != 0) {
                            floatingActionMenu.f1969e0.start();
                        }
                        if (floatingActionMenu.f1957T) {
                            AnimatorSet animatorSet = floatingActionMenu.f1966d;
                            if (animatorSet != null) {
                                animatorSet.start();
                            } else {
                                floatingActionMenu.f1964c.cancel();
                                floatingActionMenu.f1962b.start();
                            }
                        }
                        floatingActionMenu.f1982l = true;
                        int i11 = 0;
                        int i12 = 0;
                        for (int childCount = floatingActionMenu.getChildCount() - 1; childCount >= 0; childCount--) {
                            View childAt = floatingActionMenu.getChildAt(childCount);
                            if ((childAt instanceof FloatingActionButton) && childAt.getVisibility() != 8) {
                                i11++;
                                handler.postDelayed(new RunnableC3699g(floatingActionMenu, (FloatingActionButton) childAt, z9, 0), i12);
                                i12 += floatingActionMenu.f1947J;
                            }
                        }
                        handler.postDelayed(new RunnableC3700h(floatingActionMenu, 0), (i11 + 1) * floatingActionMenu.f1947J);
                    }
                }
                break;
        }
    }
}
