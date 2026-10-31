package com.google.android.material.datepicker;

import android.animation.AnimatorSet;
import android.os.Handler;
import android.view.View;
import android.view.View$OnClickListener;
import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements View$OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1252b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m(int i9, Object obj) {
        this.f1252b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public final void onClick(View view) {
        switch (this.f1252b) {
            case 0:
                n nVar = (n) this.c;
                int i9 = nVar.f1253f;
                if (i9 == 2) {
                    nVar.u(1);
                    nVar.f1256i.announceForAccessibility(nVar.getString(2131952405));
                } else if (i9 == 1) {
                    nVar.u(2);
                    nVar.f1255h.announceForAccessibility(nVar.getString(2131952406));
                }
                break;
            case 1:
                ((Runnable) this.c).run();
                break;
            case 2:
                FloatingActionButton floatingActionButton = (FloatingActionButton) this.c;
                View$OnClickListener view$OnClickListener = floatingActionButton.f1031q;
                if (view$OnClickListener != null) {
                    view$OnClickListener.onClick(floatingActionButton);
                }
                break;
            default:
                FloatingActionMenu floatingActionMenu = (FloatingActionMenu) this.c;
                boolean z8 = floatingActionMenu.M;
                boolean z9 = floatingActionMenu.f1054k;
                if (z9) {
                    floatingActionMenu.a(z8);
                } else {
                    Handler handler = floatingActionMenu.f1057m;
                    if (!z9) {
                        if (floatingActionMenu.f1047g0 != 0) {
                            floatingActionMenu.f1043e0.start();
                        }
                        if (floatingActionMenu.T) {
                            AnimatorSet animatorSet = floatingActionMenu.d;
                            if (animatorSet != null) {
                                animatorSet.start();
                            } else {
                                floatingActionMenu.c.cancel();
                                floatingActionMenu.f1039b.start();
                            }
                        }
                        floatingActionMenu.f1056l = true;
                        int i10 = 0;
                        int i11 = 0;
                        for (int childCount = floatingActionMenu.getChildCount() - 1; childCount >= 0; childCount--) {
                            View childAt = floatingActionMenu.getChildAt(childCount);
                            if ((childAt instanceof FloatingActionButton) && childAt.getVisibility() != 8) {
                                i10++;
                                handler.postDelayed(new z1.g(floatingActionMenu, (FloatingActionButton) childAt, z8, 0), i11);
                                i11 += floatingActionMenu.J;
                            }
                        }
                        handler.postDelayed(new z1.h(floatingActionMenu, 0), (i10 + 1) * floatingActionMenu.J);
                    }
                }
                break;
        }
    }
}
