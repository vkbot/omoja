package z;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver$OnPreDrawListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import y.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements ViewTreeObserver$OnPreDrawListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6146b = 0;
    public final WeakReference c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(c cVar) {
        this.c = new WeakReference(cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnPreDrawListener
    public final boolean onPreDraw() throws Throwable {
        switch (this.f6146b) {
            case 0:
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    Log.v("CustomViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                c cVar = (c) this.c.get();
                if (cVar != null) {
                    ArrayList arrayList = cVar.f6148b;
                    View view = cVar.f6147a;
                    if (!arrayList.isEmpty()) {
                        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
                        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
                        int i9 = 0;
                        int iA = cVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
                        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
                        ViewGroup$LayoutParams layoutParams2 = view.getLayoutParams();
                        int iA2 = cVar.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
                        if (iA > 0 || iA == Integer.MIN_VALUE) {
                            if (iA2 > 0 || iA2 == Integer.MIN_VALUE) {
                                ArrayList arrayList2 = new ArrayList(arrayList);
                                int size = arrayList2.size();
                                while (i9 < size) {
                                    Object obj = arrayList2.get(i9);
                                    i9++;
                                    ((f) obj).m(iA, iA2);
                                }
                                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                                if (viewTreeObserver.isAlive()) {
                                    viewTreeObserver.removeOnPreDrawListener(cVar.c);
                                }
                                cVar.c = null;
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
                e eVar = (e) this.c.get();
                if (eVar != null) {
                    ArrayList arrayList3 = eVar.f6150b;
                    View view2 = eVar.f6149a;
                    if (!arrayList3.isEmpty()) {
                        int paddingRight2 = view2.getPaddingRight() + view2.getPaddingLeft();
                        ViewGroup$LayoutParams layoutParams3 = view2.getLayoutParams();
                        int i10 = 0;
                        int iA3 = eVar.a(view2.getWidth(), layoutParams3 != null ? layoutParams3.width : 0, paddingRight2);
                        int paddingBottom2 = view2.getPaddingBottom() + view2.getPaddingTop();
                        ViewGroup$LayoutParams layoutParams4 = view2.getLayoutParams();
                        int iA4 = eVar.a(view2.getHeight(), layoutParams4 != null ? layoutParams4.height : 0, paddingBottom2);
                        if (iA3 > 0 || iA3 == Integer.MIN_VALUE) {
                            if (iA4 > 0 || iA4 == Integer.MIN_VALUE) {
                                ArrayList arrayList4 = new ArrayList(arrayList3);
                                int size2 = arrayList4.size();
                                while (i10 < size2) {
                                    Object obj2 = arrayList4.get(i10);
                                    i10++;
                                    ((f) obj2).m(iA3, iA4);
                                }
                                ViewTreeObserver viewTreeObserver2 = view2.getViewTreeObserver();
                                if (viewTreeObserver2.isAlive()) {
                                    viewTreeObserver2.removeOnPreDrawListener(eVar.c);
                                }
                                eVar.c = null;
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

    public b(e eVar) {
        this.c = new WeakReference(eVar);
    }
}
