package androidx.navigation;

import ai.onnxruntime.C0075b;
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001e\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\fH\u0007¨\u0006\u0017"}, m3159d2 = {"Landroidx/navigation/Navigation;", "", "()V", "createNavigateOnClickListener", "Landroid/view/View$OnClickListener;", "directions", "Landroidx/navigation/NavDirections;", "resId", "", "args", "Landroid/os/Bundle;", "findNavController", "Landroidx/navigation/NavController;", "activity", "Landroid/app/Activity;", "viewId", "view", "Landroid/view/View;", "findViewNavController", "getViewNavController", "setViewNavController", "", "controller", "navigation-runtime_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Navigation {
    public static final Navigation INSTANCE = new Navigation();

    private Navigation() {
    }

    @JvmStatic
    public static final View.OnClickListener createNavigateOnClickListener(NavDirections directions) {
        directions.getClass();
        return new ViewOnClickListenerC0675c(0, directions);
    }

    public static /* synthetic */ View.OnClickListener createNavigateOnClickListener$default(int i10, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bundle = null;
        }
        return createNavigateOnClickListener(i10, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createNavigateOnClickListener$lambda$0(int i10, Bundle bundle, View view) {
        view.getClass();
        findNavController(view).navigate(i10, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createNavigateOnClickListener$lambda$1(NavDirections navDirections, View view) {
        navDirections.getClass();
        view.getClass();
        findNavController(view).navigate(navDirections);
    }

    @JvmStatic
    public static final NavController findNavController(Activity activity, @IdRes int viewId) {
        activity.getClass();
        View viewRequireViewById = ActivityCompat.requireViewById(activity, viewId);
        viewRequireViewById.getClass();
        NavController navControllerFindViewNavController = INSTANCE.findViewNavController(viewRequireViewById);
        if (navControllerFindViewNavController != null) {
            return navControllerFindViewNavController;
        }
        throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + viewId);
    }

    private final NavController findViewNavController(View view) {
        return (NavController) SequencesKt.firstOrNull(SequencesKt.mapNotNull(SequencesKt.generateSequence(view, new Function1<View, View>() { // from class: androidx.navigation.Navigation.findViewNavController.1
            @Override // kotlin.jvm.functions.Function1
            public final View invoke(View view2) {
                view2.getClass();
                Object parent = view2.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new Function1<View, NavController>() { // from class: androidx.navigation.Navigation.findViewNavController.2
            @Override // kotlin.jvm.functions.Function1
            public final NavController invoke(View view2) {
                view2.getClass();
                return Navigation.INSTANCE.getViewNavController(view2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavController getViewNavController(View view) {
        Object tag = view.getTag(C0672R.id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (NavController) ((WeakReference) tag).get();
        }
        if (tag instanceof NavController) {
            return (NavController) tag;
        }
        return null;
    }

    @JvmStatic
    public static final void setViewNavController(View view, NavController controller) {
        view.getClass();
        view.setTag(C0672R.id.nav_controller_view_tag, controller);
    }

    @JvmStatic
    @JvmOverloads
    public static final View.OnClickListener createNavigateOnClickListener(@IdRes int resId, Bundle args) {
        return new ViewOnClickListenerC0677d(resId, args);
    }

    @JvmStatic
    @JvmOverloads
    public static final View.OnClickListener createNavigateOnClickListener(@IdRes int i10) {
        return createNavigateOnClickListener$default(i10, null, 2, null);
    }

    @JvmStatic
    public static final NavController findNavController(View view) {
        view.getClass();
        NavController navControllerFindViewNavController = INSTANCE.findViewNavController(view);
        if (navControllerFindViewNavController != null) {
            return navControllerFindViewNavController;
        }
        C0075b.m182g(view, "View ", " does not have a NavController set");
        return null;
    }
}
