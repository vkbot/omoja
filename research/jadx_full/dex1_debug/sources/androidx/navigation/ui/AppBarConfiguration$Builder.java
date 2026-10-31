package androidx.navigation.ui;

import android.view.Menu;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.customview.widget.Openable;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavGraph;
import java.util.HashSet;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u0013\b\u0016\u0012\n\u0010\b\u001a\u00020\t\"\u00020\n¢\u0006\u0002\u0010\u000bB\u0015\b\u0016\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\u0002\u0010\rJ\u0006\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u0016\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0007J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Landroidx/navigation/ui/AppBarConfiguration$Builder;", "", "navGraph", "Landroidx/navigation/NavGraph;", "(Landroidx/navigation/NavGraph;)V", "topLevelMenu", "Landroid/view/Menu;", "(Landroid/view/Menu;)V", "topLevelDestinationIds", "", "", "([I)V", "", "(Ljava/util/Set;)V", "fallbackOnNavigateUpListener", "Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;", "openableLayout", "Landroidx/customview/widget/Openable;", "topLevelDestinations", "", "build", "Landroidx/navigation/ui/AppBarConfiguration;", "setDrawerLayout", "drawerLayout", "Landroidx/drawerlayout/widget/DrawerLayout;", "setFallbackOnNavigateUpListener", "setOpenableLayout", "navigation-ui_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class AppBarConfiguration$Builder {
    private AppBarConfiguration$OnNavigateUpListener fallbackOnNavigateUpListener;
    private Openable openableLayout;
    private final Set<Integer> topLevelDestinations;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppBarConfiguration$Builder(Menu menu) {
        menu.getClass();
        this.topLevelDestinations = new HashSet();
        int size = menu.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.topLevelDestinations.add(Integer.valueOf(menu.getItem(i9).getItemId()));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final AppBarConfiguration build() {
        return new AppBarConfiguration(this.topLevelDestinations, this.openableLayout, this.fallbackOnNavigateUpListener, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated(message = "Use {@link #setOpenableLayout(Openable)}.")
    public final AppBarConfiguration$Builder setDrawerLayout(DrawerLayout drawerLayout) {
        this.openableLayout = drawerLayout;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final AppBarConfiguration$Builder setFallbackOnNavigateUpListener(AppBarConfiguration$OnNavigateUpListener fallbackOnNavigateUpListener) {
        this.fallbackOnNavigateUpListener = fallbackOnNavigateUpListener;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final AppBarConfiguration$Builder setOpenableLayout(Openable openableLayout) {
        this.openableLayout = openableLayout;
        return this;
    }

    public AppBarConfiguration$Builder(NavGraph navGraph) {
        navGraph.getClass();
        HashSet hashSet = new HashSet();
        this.topLevelDestinations = hashSet;
        hashSet.add(Integer.valueOf(NavGraph.Companion.findStartDestination(navGraph).getId()));
    }

    public AppBarConfiguration$Builder(int... iArr) {
        iArr.getClass();
        this.topLevelDestinations = new HashSet();
        for (int i9 : iArr) {
            this.topLevelDestinations.add(Integer.valueOf(i9));
        }
    }

    public AppBarConfiguration$Builder(Set<Integer> set) {
        set.getClass();
        HashSet hashSet = new HashSet();
        this.topLevelDestinations = hashSet;
        hashSet.addAll(set);
    }
}
