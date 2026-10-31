package androidx.navigation.ui;

import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior;
import androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams;
import androidx.customview.widget.Openable;
import androidx.navigation.ActivityNavigator$Destination;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavOptions$Builder;
import androidx.profileinstaller.ProfileVerifier$CompilationStatus;
import c3.d;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import j1.i;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import u3.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ'\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\t\u0010\fJ!\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u000f\u0010\u0013J)\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0017\u0010\u0019J)\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ)\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u001c\u0010\u001eJ1\u0010\u001c\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001c\u0010!J1\u0010\u001c\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u001c\u0010\"J\u001f\u0010\u001c\u001a\u00020\u00162\u0006\u0010$\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001c\u0010%J'\u0010\u001c\u001a\u00020\u00162\u0006\u0010$\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001c\u0010&J\u001d\u0010*\u001a\b\u0012\u0002\b\u0003\u0018\u00010)2\u0006\u0010(\u001a\u00020'H\u0007¢\u0006\u0004\b*\u0010+J\u001f\u0010\u001c\u001a\u00020\u00162\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001c\u0010.J'\u0010\u001c\u001a\u00020\u00162\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001c\u0010/J\u001d\u00105\u001a\u00020\b*\u0002002\b\b\u0001\u00102\u001a\u000201H\u0001¢\u0006\u0004\b3\u00104R\u0014\u00107\u001a\u0002068\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u00108¨\u00069"}, d2 = {"Landroidx/navigation/ui/NavigationUI;", "", "<init>", "()V", "Landroid/view/MenuItem;", "item", "Landroidx/navigation/NavController;", "navController", "", "onNavDestinationSelected", "(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z", "saveState", "(Landroid/view/MenuItem;Landroidx/navigation/NavController;Z)Z", "Landroidx/customview/widget/Openable;", "openableLayout", "navigateUp", "(Landroidx/navigation/NavController;Landroidx/customview/widget/Openable;)Z", "Landroidx/navigation/ui/AppBarConfiguration;", "configuration", "(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)Z", "Landroidx/appcompat/app/AppCompatActivity;", "activity", "", "setupActionBarWithNavController", "(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/customview/widget/Openable;)V", "(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V", "Landroidx/appcompat/widget/Toolbar;", "toolbar", "setupWithNavController", "(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/customview/widget/Openable;)V", "(Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V", "Lc3/d;", "collapsingToolbarLayout", "(Lc3/d;Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/customview/widget/Openable;)V", "(Lc3/d;Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V", "Lu3/b;", "navigationView", "(Lu3/b;Landroidx/navigation/NavController;)V", "(Lu3/b;Landroidx/navigation/NavController;Z)V", "Landroid/view/View;", "view", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "findBottomSheetBehavior", "(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Lu3/a;", "navigationBarView", "(Lu3/a;Landroidx/navigation/NavController;)V", "(Lu3/a;Landroidx/navigation/NavController;Z)V", "Landroidx/navigation/NavDestination;", "", "destId", "matchDestination$navigation_ui_release", "(Landroidx/navigation/NavDestination;I)Z", "matchDestination", "", "TAG", "Ljava/lang/String;", "navigation-ui_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavigationUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,714:1\n1247#2,2:715\n*S KotlinDebug\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI\n*L\n712#1:715,2\n*E\n"})
public final class NavigationUI {
    public static final NavigationUI INSTANCE = new NavigationUI();
    private static final String TAG = "NavigationUI";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private NavigationUI() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(NavController navController, AppBarConfiguration appBarConfiguration, View view) {
        setupWithNavController$lambda$1(navController, appBarConfiguration, view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final BottomSheetBehavior<?> findBottomSheetBehavior(View view) {
        view.getClass();
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout$LayoutParams) {
            CoordinatorLayout$Behavior behavior = ((CoordinatorLayout$LayoutParams) layoutParams).getBehavior();
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final boolean matchDestination$navigation_ui_release(NavDestination navDestination, @IdRes int i9) {
        navDestination.getClass();
        Iterator<NavDestination> it = NavDestination.Companion.getHierarchy(navDestination).iterator();
        while (it.hasNext()) {
            if (it.next().getId() == i9) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        AppBarConfiguration$OnNavigateUpListener fallbackOnNavigateUpListener = configuration.getFallbackOnNavigateUpListener();
        if (fallbackOnNavigateUpListener != null) {
            return fallbackOnNavigateUpListener.onNavigateUp();
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NavigationUiSaveStateControl
    @JvmStatic
    public static final boolean onNavDestinationSelected(MenuItem item, NavController navController, boolean saveState) {
        item.getClass();
        navController.getClass();
        if (saveState) {
            i.l("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default");
            return false;
        }
        NavOptions$Builder launchSingleTop = new NavOptions$Builder().setLaunchSingleTop(true);
        NavDestination currentDestination = navController.getCurrentDestination();
        currentDestination.getClass();
        NavGraph parent = currentDestination.getParent();
        parent.getClass();
        if (parent.findNode(item.getItemId()) instanceof ActivityNavigator$Destination) {
            launchSingleTop.setEnterAnim(R$anim.nav_default_enter_anim).setExitAnim(R$anim.nav_default_exit_anim).setPopEnterAnim(R$anim.nav_default_pop_enter_anim).setPopExitAnim(R$anim.nav_default_pop_exit_anim);
        } else {
            launchSingleTop.setEnterAnim(R$animator.nav_default_enter_anim).setExitAnim(R$animator.nav_default_exit_anim).setPopEnterAnim(R$animator.nav_default_pop_enter_anim).setPopExitAnim(R$animator.nav_default_pop_exit_anim);
        }
        if ((item.getOrder() & ProfileVerifier$CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            NavOptions$Builder.setPopUpTo$default(launchSingleTop, NavGraph.Companion.findStartDestination(navController.getGraph()).getId(), false, false, 4, (Object) null);
        }
        try {
            navController.navigate(item.getItemId(), (Bundle) null, launchSingleTop.build());
            NavDestination currentDestination2 = navController.getCurrentDestination();
            return currentDestination2 != null && matchDestination$navigation_ui_release(currentDestination2, item.getItemId());
        } catch (IllegalArgumentException e) {
            StringBuilder sbX = ai.onnxruntime.a.x("Ignoring onNavDestinationSelected for MenuItem ", NavDestination.Companion.getDisplayName(navController.getContext(), item.getItemId()), " as it cannot be found from the current destination ");
            sbX.append(navController.getCurrentDestination());
            Log.i(TAG, sbX.toString(), e);
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final void setupActionBarWithNavController(AppCompatActivity activity, NavController navController, Openable openableLayout) {
        activity.getClass();
        navController.getClass();
        setupActionBarWithNavController(activity, navController, new AppBarConfiguration$Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void setupActionBarWithNavController$default(AppCompatActivity appCompatActivity, NavController navController, AppBarConfiguration appBarConfiguration, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration$Builder(navController.getGraph()).build();
        }
        setupActionBarWithNavController(appCompatActivity, navController, appBarConfiguration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final void setupWithNavController(Toolbar toolbar, NavController navController, Openable openableLayout) {
        toolbar.getClass();
        navController.getClass();
        setupWithNavController(toolbar, navController, new AppBarConfiguration$Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void setupWithNavController$default(Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration$Builder(navController.getGraph()).build();
        }
        setupWithNavController(toolbar, navController, appBarConfiguration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void setupWithNavController$lambda$1(NavController navController, AppBarConfiguration appBarConfiguration, View view) {
        navController.getClass();
        appBarConfiguration.getClass();
        navigateUp(navController, appBarConfiguration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void setupWithNavController$lambda$2(NavController navController, AppBarConfiguration appBarConfiguration, View view) {
        navController.getClass();
        appBarConfiguration.getClass();
        navigateUp(navController, appBarConfiguration);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean setupWithNavController$lambda$3(NavController navController, b bVar, MenuItem menuItem) {
        navController.getClass();
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean setupWithNavController$lambda$5(NavController navController, boolean z8, b bVar, MenuItem menuItem) {
        navController.getClass();
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean setupWithNavController$lambda$6(NavController navController, MenuItem menuItem) {
        navController.getClass();
        menuItem.getClass();
        return onNavDestinationSelected(menuItem, navController);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final boolean setupWithNavController$lambda$8(NavController navController, boolean z8, MenuItem menuItem) {
        navController.getClass();
        menuItem.getClass();
        return onNavDestinationSelected(menuItem, navController, z8);
    }

    public static /* synthetic */ void setupWithNavController$default(d dVar, Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i9, Object obj) {
        if ((i9 & 8) != 0) {
            appBarConfiguration = new AppBarConfiguration$Builder(navController.getGraph()).build();
        }
        setupWithNavController(dVar, toolbar, navController, appBarConfiguration);
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
    public static final void setupWithNavController(d dVar, Toolbar toolbar, NavController navController) {
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
    public static final void setupWithNavController(d collapsingToolbarLayout, Toolbar toolbar, NavController navController, Openable openableLayout) {
        throw null;
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(d collapsingToolbarLayout, Toolbar toolbar, NavController navController, AppBarConfiguration configuration) {
        throw null;
    }

    @JvmStatic
    public static final void setupWithNavController(u3.a navigationBarView, NavController navController) {
        throw null;
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final void setupWithNavController(u3.a navigationBarView, NavController navController, boolean saveState) {
        throw null;
    }

    @JvmStatic
    public static final void setupWithNavController(b navigationView, NavController navController) {
        throw null;
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final void setupWithNavController(b navigationView, NavController navController, boolean saveState) {
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
        toolbar.setNavigationOnClickListener(new a(0, navController, configuration));
    }

    @JvmStatic
    public static final boolean navigateUp(NavController navController, Openable openableLayout) {
        navController.getClass();
        return navigateUp(navController, new AppBarConfiguration$Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    @JvmStatic
    public static final boolean onNavDestinationSelected(MenuItem item, NavController navController) {
        item.getClass();
        navController.getClass();
        NavOptions$Builder restoreState = new NavOptions$Builder().setLaunchSingleTop(true).setRestoreState(true);
        NavDestination currentDestination = navController.getCurrentDestination();
        currentDestination.getClass();
        NavGraph parent = currentDestination.getParent();
        parent.getClass();
        if (parent.findNode(item.getItemId()) instanceof ActivityNavigator$Destination) {
            restoreState.setEnterAnim(R$anim.nav_default_enter_anim).setExitAnim(R$anim.nav_default_exit_anim).setPopEnterAnim(R$anim.nav_default_pop_enter_anim).setPopExitAnim(R$anim.nav_default_pop_exit_anim);
        } else {
            restoreState.setEnterAnim(R$animator.nav_default_enter_anim).setExitAnim(R$animator.nav_default_exit_anim).setPopEnterAnim(R$animator.nav_default_pop_enter_anim).setPopExitAnim(R$animator.nav_default_pop_exit_anim);
        }
        if ((item.getOrder() & ProfileVerifier$CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            restoreState.setPopUpTo(NavGraph.Companion.findStartDestination(navController.getGraph()).getId(), false, true);
        }
        try {
            navController.navigate(item.getItemId(), (Bundle) null, restoreState.build());
            NavDestination currentDestination2 = navController.getCurrentDestination();
            return currentDestination2 != null && matchDestination$navigation_ui_release(currentDestination2, item.getItemId());
        } catch (IllegalArgumentException e) {
            StringBuilder sbX = ai.onnxruntime.a.x("Ignoring onNavDestinationSelected for MenuItem ", NavDestination.Companion.getDisplayName(navController.getContext(), item.getItemId()), " as it cannot be found from the current destination ");
            sbX.append(navController.getCurrentDestination());
            Log.i(TAG, sbX.toString(), e);
            return false;
        }
    }
}
