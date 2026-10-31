package p254z;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p244y.C3621f;

/* JADX INFO: renamed from: z.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC3688b implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10921b = 0;

    /* JADX INFO: renamed from: c */
    public final WeakReference f10922c;

    public ViewTreeObserverOnPreDrawListenerC3688b(C3689c c3689c) {
        this.f10922c = new WeakReference(c3689c);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() throws Throwable {
        switch (this.f10921b) {
            case 0:
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    Log.v("CustomViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                C3689c c3689c = (C3689c) this.f10922c.get();
                if (c3689c != null) {
                    ArrayList arrayList = c3689c.f10925b;
                    View view = c3689c.f10924a;
                    if (!arrayList.isEmpty()) {
                        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        int i10 = 0;
                        int iM5912a = c3689c.m5912a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
                        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                        int iM5912a2 = c3689c.m5912a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
                        if (iM5912a > 0 || iM5912a == Integer.MIN_VALUE) {
                            if (iM5912a2 > 0 || iM5912a2 == Integer.MIN_VALUE) {
                                ArrayList arrayList2 = new ArrayList(arrayList);
                                int size = arrayList2.size();
                                while (i10 < size) {
                                    Object obj = arrayList2.get(i10);
                                    i10++;
                                    ((C3621f) obj).m5795m(iM5912a, iM5912a2);
                                }
                                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                                if (viewTreeObserver.isAlive()) {
                                    viewTreeObserver.removeOnPreDrawListener(c3689c.f10926c);
                                }
                                c3689c.f10926c = null;
                                arrayList.clear();
                            }
                        }
                        break;
                    }
                }
                break;
            default:
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                C3691e c3691e = (C3691e) this.f10922c.get();
                if (c3691e != null) {
                    ArrayList arrayList3 = c3691e.f10929b;
                    View view2 = c3691e.f10928a;
                    if (!arrayList3.isEmpty()) {
                        int paddingRight2 = view2.getPaddingRight() + view2.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
                        int i11 = 0;
                        int iM5913a = c3691e.m5913a(view2.getWidth(), layoutParams3 != null ? layoutParams3.width : 0, paddingRight2);
                        int paddingBottom2 = view2.getPaddingBottom() + view2.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams4 = view2.getLayoutParams();
                        int iM5913a2 = c3691e.m5913a(view2.getHeight(), layoutParams4 != null ? layoutParams4.height : 0, paddingBottom2);
                        if (iM5913a > 0 || iM5913a == Integer.MIN_VALUE) {
                            if (iM5913a2 > 0 || iM5913a2 == Integer.MIN_VALUE) {
                                ArrayList arrayList4 = new ArrayList(arrayList3);
                                int size2 = arrayList4.size();
                                while (i11 < size2) {
                                    Object obj2 = arrayList4.get(i11);
                                    i11++;
                                    ((C3621f) obj2).m5795m(iM5913a, iM5913a2);
                                }
                                ViewTreeObserver viewTreeObserver2 = view2.getViewTreeObserver();
                                if (viewTreeObserver2.isAlive()) {
                                    viewTreeObserver2.removeOnPreDrawListener(c3691e.f10930c);
                                }
                                c3691e.f10930c = null;
                                arrayList3.clear();
                            }
                        }
                        break;
                    }
                }
                break;
        }
        return true;
    }

    public ViewTreeObserverOnPreDrawListenerC3688b(C3691e c3691e) {
        this.f10922c = new WeakReference(c3691e);
    }
}
