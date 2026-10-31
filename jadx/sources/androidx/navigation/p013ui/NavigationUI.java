package androidx.navigation.p013ui;

import ai.onnxruntime.AbstractC0074a;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.widget.Openable;
import androidx.navigation.ActivityNavigator;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavOptions;
import androidx.profileinstaller.ProfileVerifier;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import p028c3.AbstractC0978d;
import p099j1.C1929i;
import p142n0.C2467b;
import p209u3.AbstractC3286a;
import p209u3.AbstractC3287b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ'\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\fJ!\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u000f\u0010\u0013J)\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0017\u0010\u0019J)\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ)\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u001c\u0010\u001eJ1\u0010\u001c\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001c\u0010!J1\u0010\u001c\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u001c\u0010\"J\u001f\u0010\u001c\u001a\u00020\u00162\u0006\u0010$\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001c\u0010%J'\u0010\u001c\u001a\u00020\u00162\u0006\u0010$\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001c\u0010&J\u001d\u0010*\u001a\b\u0012\u0002\b\u0003\u0018\u00010)2\u0006\u0010(\u001a\u00020'H\u0007¢\u0006\u0004\b*\u0010+J\u001f\u0010\u001c\u001a\u00020\u00162\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001c\u0010.J'\u0010\u001c\u001a\u00020\u00162\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001c\u0010/J\u001d\u00105\u001a\u00020\b*\u0002002\b\b\u0001\u00102\u001a\u000201H\u0001¢\u0006\u0004\b3\u00104R\u0014\u00107\u001a\u0002068\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u00108¨\u00069"}, m3159d2 = {"Landroidx/navigation/ui/NavigationUI;", "", "<init>", "()V", "Landroid/view/MenuItem;", "item", "Landroidx/navigation/NavController;", "navController", "", "onNavDestinationSelected", "(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z", "saveState", "(Landroid/view/MenuItem;Landroidx/navigation/NavController;Z)Z", "Landroidx/customview/widget/Openable;", "openableLayout", "navigateUp", "(Landroidx/navigation/NavController;Landroidx/customview/widget/Openable;)Z", "Landroidx/navigation/ui/AppBarConfiguration;", "configuration", "(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)Z", "Landroidx/appcompat/app/AppCompatActivity;", "activity", "", "setupActionBarWithNavController", "(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/customview/widget/Openable;)V", "(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V", "Landroidx/appcompat/widget/Toolbar;", "toolbar", "setupWithNavController", "(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/customview/widget/Openable;)V", "(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V", "Lc3/d;", "collapsingToolbarLayout", "(Lc3/d;Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/customview/widget/Openable;)V", "(Lc3/d;Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V", "Lu3/b;", "navigationView", "(Lu3/b;Landroidx/navigation/NavController;)V", "(Lu3/b;Landroidx/navigation/NavController;Z)V", "Landroid/view/View;", "view", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "findBottomSheetBehavior", "(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Lu3/a;", "navigationBarView", "(Lu3/a;Landroidx/navigation/NavController;)V", "(Lu3/a;Landroidx/navigation/NavController;Z)V", "Landroidx/navigation/NavDestination;", "", "destId", "matchDestination$navigation_ui_release", "(Landroidx/navigation/NavDestination;I)Z", "matchDestination", "", "TAG", "Ljava/lang/String;", "navigation-ui_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavigationUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,714:1\n1247#2,2:715\n*S KotlinDebug\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI\n*L\n712#1:715,2\n*E\n"})
public final class NavigationUI {
    public static final NavigationUI INSTANCE = new NavigationUI();
    private static final String TAG = "NavigationUI";

    /* JADX INFO: renamed from: androidx.navigation.ui.NavigationUI$setupWithNavController$12 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, m3159d2 = {"androidx/navigation/ui/NavigationUI$setupWithNavController$12", "Landroidx/navigation/NavController$OnDestinationChangedListener;", "onDestinationChanged", "", "controller", "Landroidx/navigation/NavController;", "destination", "Landroidx/navigation/NavDestination;", "arguments", "Landroid/os/Bundle;", "navigation-ui_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavigationUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$12\n+ 2 Menu.kt\nandroidx/core/view/MenuKt\n*L\n1#1,714:1\n56#2,4:715\n*S KotlinDebug\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$12\n*L\n695#1:715,4\n*E\n"})
    public static final class C069612 implements NavController.OnDestinationChangedListener {
        final /* synthetic */ NavController $navController;
        final /* synthetic */ WeakReference<AbstractC3286a> $weakReference;

        public C069612(WeakReference<AbstractC3286a> weakReference, NavController navController) {
            this.$weakReference = weakReference;
            this.$navController = navController;
        }

        @Override // androidx.navigation.NavController.OnDestinationChangedListener
        public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
            controller.getClass();
            destination.getClass();
            if (this.$weakReference.get() == null) {
                this.$navController.removeOnDestinationChangedListener(this);
            } else {
                C2467b.m3822a();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.ui.NavigationUI$setupWithNavController$4 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, m3159d2 = {"androidx/navigation/ui/NavigationUI$setupWithNavController$4", "Landroidx/navigation/NavController$OnDestinationChangedListener;", "onDestinationChanged", "", "controller", "Landroidx/navigation/NavController;", "destination", "Landroidx/navigation/NavDestination;", "arguments", "Landroid/os/Bundle;", "navigation-ui_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavigationUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$4\n+ 2 Menu.kt\nandroidx/core/view/MenuKt\n*L\n1#1,714:1\n56#2,4:715\n*S KotlinDebug\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$4\n*L\n499#1:715,4\n*E\n"})
    public static final class C06974 implements NavController.OnDestinationChangedListener {
        final /* synthetic */ NavController $navController;
        final /* synthetic */ WeakReference<AbstractC3287b> $weakReference;

        public C06974(WeakReference<AbstractC3287b> weakReference, NavController navController) {
            this.$weakReference = weakReference;
            this.$navController = navController;
        }

        @Override // androidx.navigation.NavController.OnDestinationChangedListener
        public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
            controller.getClass();
            destination.getClass();
            if (this.$weakReference.get() == null) {
                this.$navController.removeOnDestinationChangedListener(this);
            } else {
                C2467b.m3822a();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.ui.NavigationUI$setupWithNavController$7 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, m3159d2 = {"androidx/navigation/ui/NavigationUI$setupWithNavController$7", "Landroidx/navigation/NavController$OnDestinationChangedListener;", "onDestinationChanged", "", "controller", "Landroidx/navigation/NavController;", "destination", "Landroidx/navigation/NavDestination;", "arguments", "Landroid/os/Bundle;", "navigation-ui_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavigationUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$7\n+ 2 Menu.kt\nandroidx/core/view/MenuKt\n*L\n1#1,714:1\n56#2,4:715\n*S KotlinDebug\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$7\n*L\n573#1:715,4\n*E\n"})
    public static final class C06987 implements NavController.OnDestinationChangedListener {
        final /* synthetic */ NavController $navController;
        final /* synthetic */ WeakReference<AbstractC3287b> $weakReference;

        public C06987(WeakReference<AbstractC3287b> weakReference, NavController navController) {
            this.$weakReference = weakReference;
            this.$navController = navController;
        }

        @Override // androidx.navigation.NavController.OnDestinationChangedListener
        public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
            controller.getClass();
            destination.getClass();
            if (this.$weakReference.get() == null) {
                this.$navController.removeOnDestinationChangedListener(this);
            } else {
                C2467b.m3822a();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.ui.NavigationUI$setupWithNavController$9 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, m3159d2 = {"androidx/navigation/ui/NavigationUI$setupWithNavController$9", "Landroidx/navigation/NavController$OnDestinationChangedListener;", "onDestinationChanged", "", "controller", "Landroidx/navigation/NavController;", "destination", "Landroidx/navigation/NavDestination;", "arguments", "Landroid/os/Bundle;", "navigation-ui_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavigationUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$9\n+ 2 Menu.kt\nandroidx/core/view/MenuKt\n*L\n1#1,714:1\n56#2,4:715\n*S KotlinDebug\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI$setupWithNavController$9\n*L\n638#1:715,4\n*E\n"})
    public static final class C06999 implements NavController.OnDestinationChangedListener {
        final /* synthetic */ NavController $navController;
        final /* synthetic */ WeakReference<AbstractC3286a> $weakReference;

        public C06999(WeakReference<AbstractC3286a> weakReference, NavController navController) {
            this.$weakReference = weakReference;
            this.$navController = navController;
        }

        @Override // androidx.navigation.NavController.OnDestinationChangedListener
        public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
            controller.getClass();
            destination.getClass();
            if (this.$weakReference.get() == null) {
                this.$navController.removeOnDestinationChangedListener(this);
            } else {
                C2467b.m3822a();
            }
        }
    }

    private NavigationUI() {
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final BottomSheetBehavior<?> findBottomSheetBehavior(View view) {
        view.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            return null;
        }
        Object parent = view.getParent();
        if (parent instanceof View) {
            return findBottomSheetBehavior((View) parent);
        }
        return null;
    }

    @JvmStatic
    public static final boolean matchDestination$navigation_ui_release(NavDestination navDestination, @IdRes int i10) {
        navDestination.getClass();
        Iterator<NavDestination> it = NavDestination.INSTANCE.getHierarchy(navDestination).iterator();
        while (it.hasNext()) {
            if (it.next().getId() == i10) {
                return true;
            }
        }
        return false;
    }

    @JvmStatic
    public static final boolean navigateUp(NavController navController, AppBarConfiguration configuration) {
        navController.getClass();
        configuration.getClass();
        Openable openableLayout = configuration.getOpenableLayout();
        NavDestination currentDestination = navController.getCurrentDestination();
        if (openableLayout != null && currentDestination != null && configuration.isTopLevelDestination(currentDestination)) {
            openableLayout.open();
            return true;
        }
        if (navController.navigateUp()) {
            return true;
        }
        AppBarConfiguration.OnNavigateUpListener fallbackOnNavigateUpListener = configuration.getFallbackOnNavigateUpListener();
        if (fallbackOnNavigateUpListener != null) {
            return fallbackOnNavigateUpListener.onNavigateUp();
        }
        return false;
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final boolean onNavDestinationSelected(MenuItem item, NavController navController, boolean saveState) {
        item.getClass();
        navController.getClass();
        if (saveState) {
            C1929i.m3030l("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default");
            return false;
        }
        NavOptions.Builder launchSingleTop = new NavOptions.Builder().setLaunchSingleTop(true);
        NavDestination currentDestination = navController.getCurrentDestination();
        currentDestination.getClass();
        NavGraph parent = currentDestination.getParent();
        parent.getClass();
        if (parent.findNode(item.getItemId()) instanceof ActivityNavigator.Destination) {
            launchSingleTop.setEnterAnim(C0700R.anim.nav_default_enter_anim).setExitAnim(C0700R.anim.nav_default_exit_anim).setPopEnterAnim(C0700R.anim.nav_default_pop_enter_anim).setPopExitAnim(C0700R.anim.nav_default_pop_exit_anim);
        } else {
            launchSingleTop.setEnterAnim(C0700R.animator.nav_default_enter_anim).setExitAnim(C0700R.animator.nav_default_exit_anim).setPopEnterAnim(C0700R.animator.nav_default_pop_enter_anim).setPopExitAnim(C0700R.animator.nav_default_pop_exit_anim);
        }
        if ((item.getOrder() & ProfileVerifier.CompilationStatus.f499xf2722a21) == 0) {
            NavOptions.Builder.setPopUpTo$default(launchSingleTop, NavGraph.INSTANCE.findStartDestination(navController.getGraph()).getId(), false, false, 4, (Object) null);
        }
        try {
            navController.navigate(item.getItemId(), (Bundle) null, launchSingleTop.build());
            NavDestination currentDestination2 = navController.getCurrentDestination();
            return currentDestination2 != null && matchDestination$navigation_ui_release(currentDestination2, item.getItemId());
        } catch (IllegalArgumentException e) {
            StringBuilder sbM173x = AbstractC0074a.m173x("Ignoring onNavDestinationSelected for MenuItem ", NavDestination.INSTANCE.getDisplayName(navController.getContext(), item.getItemId()), " as it cannot be found from the current destination ");
            sbM173x.append(navController.getCurrentDestination());
            Log.i(TAG, sbM173x.toString(), e);
            return false;
        }
    }

    @JvmStatic
    public static final void setupActionBarWithNavController(AppCompatActivity activity, NavController navController, Openable openableLayout) {
        activity.getClass();
        navController.getClass();
        setupActionBarWithNavController(activity, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    public static /* synthetic */ void setupActionBarWithNavController$default(AppCompatActivity appCompatActivity, NavController navController, AppBarConfiguration appBarConfiguration, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupActionBarWithNavController(appCompatActivity, navController, appBarConfiguration);
    }

    @JvmStatic
    public static final void setupWithNavController(Toolbar toolbar, NavController navController, Openable openableLayout) {
        toolbar.getClass();
        navController.getClass();
        setupWithNavController(toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    public static /* synthetic */ void setupWithNavController$default(Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupWithNavController(toolbar, navController, appBarConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupWithNavController$lambda$1(NavController navController, AppBarConfiguration appBarConfiguration, View view) {
        navController.getClass();
        appBarConfiguration.getClass();
        navigateUp(navController, appBarConfiguration);
    }

    private static final void setupWithNavController$lambda$2(NavController navController, AppBarConfiguration appBarConfiguration, View view) {
        navController.getClass();
        appBarConfiguration.getClass();
        navigateUp(navController, appBarConfiguration);
    }

    private static final boolean setupWithNavController$lambda$3(NavController navController, AbstractC3287b abstractC3287b, MenuItem menuItem) {
        navController.getClass();
        throw null;
    }

    private static final boolean setupWithNavController$lambda$5(NavController navController, boolean z9, AbstractC3287b abstractC3287b, MenuItem menuItem) {
        navController.getClass();
        throw null;
    }

    private static final boolean setupWithNavController$lambda$6(NavController navController, MenuItem menuItem) {
        navController.getClass();
        menuItem.getClass();
        return onNavDestinationSelected(menuItem, navController);
    }

    private static final boolean setupWithNavController$lambda$8(NavController navController, boolean z9, MenuItem menuItem) {
        navController.getClass();
        menuItem.getClass();
        return onNavDestinationSelected(menuItem, navController, z9);
    }

    public static /* synthetic */ void setupWithNavController$default(AbstractC0978d abstractC0978d, Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupWithNavController(abstractC0978d, toolbar, navController, appBarConfiguration);
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupActionBarWithNavController(AppCompatActivity appCompatActivity, NavController navController) {
        appCompatActivity.getClass();
        navController.getClass();
        setupActionBarWithNavController$default(appCompatActivity, navController, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(AbstractC0978d abstractC0978d, Toolbar toolbar, NavController navController) {
        throw null;
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupActionBarWithNavController(AppCompatActivity activity, NavController navController, AppBarConfiguration configuration) {
        activity.getClass();
        navController.getClass();
        configuration.getClass();
        navController.addOnDestinationChangedListener(new ActionBarOnDestinationChangedListener(activity, configuration));
    }

    @JvmStatic
    public static final void setupWithNavController(AbstractC0978d collapsingToolbarLayout, Toolbar toolbar, NavController navController, Openable openableLayout) {
        throw null;
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(AbstractC0978d collapsingToolbarLayout, Toolbar toolbar, NavController navController, AppBarConfiguration configuration) {
        throw null;
    }

    @JvmStatic
    public static final void setupWithNavController(AbstractC3286a navigationBarView, NavController navController) {
        throw null;
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final void setupWithNavController(AbstractC3286a navigationBarView, NavController navController, boolean saveState) {
        throw null;
    }

    @JvmStatic
    public static final void setupWithNavController(AbstractC3287b navigationView, NavController navController) {
        throw null;
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final void setupWithNavController(AbstractC3287b navigationView, NavController navController, boolean saveState) {
        throw null;
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(Toolbar toolbar, NavController navController) {
        toolbar.getClass();
        navController.getClass();
        setupWithNavController$default(toolbar, navController, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(Toolbar toolbar, NavController navController, AppBarConfiguration configuration) {
        toolbar.getClass();
        navController.getClass();
        configuration.getClass();
        navController.addOnDestinationChangedListener(new ToolbarOnDestinationChangedListener(toolbar, configuration));
        toolbar.setNavigationOnClickListener(new ViewOnClickListenerC0701a(0, navController, configuration));
    }

    @JvmStatic
    public static final boolean navigateUp(NavController navController, Openable openableLayout) {
        navController.getClass();
        return navigateUp(navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    @JvmStatic
    public static final boolean onNavDestinationSelected(MenuItem item, NavController navController) {
        item.getClass();
        navController.getClass();
        NavOptions.Builder restoreState = new NavOptions.Builder().setLaunchSingleTop(true).setRestoreState(true);
        NavDestination currentDestination = navController.getCurrentDestination();
        currentDestination.getClass();
        NavGraph parent = currentDestination.getParent();
        parent.getClass();
        if (parent.findNode(item.getItemId()) instanceof ActivityNavigator.Destination) {
            restoreState.setEnterAnim(C0700R.anim.nav_default_enter_anim).setExitAnim(C0700R.anim.nav_default_exit_anim).setPopEnterAnim(C0700R.anim.nav_default_pop_enter_anim).setPopExitAnim(C0700R.anim.nav_default_pop_exit_anim);
        } else {
            restoreState.setEnterAnim(C0700R.animator.nav_default_enter_anim).setExitAnim(C0700R.animator.nav_default_exit_anim).setPopEnterAnim(C0700R.animator.nav_default_pop_enter_anim).setPopExitAnim(C0700R.animator.nav_default_pop_exit_anim);
        }
        if ((item.getOrder() & ProfileVerifier.CompilationStatus.f499xf2722a21) == 0) {
            restoreState.setPopUpTo(NavGraph.INSTANCE.findStartDestination(navController.getGraph()).getId(), false, true);
        }
        try {
            navController.navigate(item.getItemId(), (Bundle) null, restoreState.build());
            NavDestination currentDestination2 = navController.getCurrentDestination();
            return currentDestination2 != null && matchDestination$navigation_ui_release(currentDestination2, item.getItemId());
        } catch (IllegalArgumentException e) {
            StringBuilder sbM173x = AbstractC0074a.m173x("Ignoring onNavDestinationSelected for MenuItem ", NavDestination.INSTANCE.getDisplayName(navController.getContext(), item.getItemId()), " as it cannot be found from the current destination ");
            sbM173x.append(navController.getCurrentDestination());
            Log.i(TAG, sbM173x.toString(), e);
            return false;
        }
    }
}
