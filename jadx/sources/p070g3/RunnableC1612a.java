package p070g3;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: renamed from: g3.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1612a implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ View f4055b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f4056c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ BottomSheetBehavior f4057d;

    public RunnableC1612a(BottomSheetBehavior bottomSheetBehavior, View view, int i10) {
        this.f4057d = bottomSheetBehavior;
        this.f4055b = view;
        this.f4056c = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4057d.m1767n(this.f4055b, this.f4056c, false);
    }
}
