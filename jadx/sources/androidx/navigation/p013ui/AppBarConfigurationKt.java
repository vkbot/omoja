package androidx.navigation.p013ui;

import android.view.Menu;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.customview.widget.Openable;
import androidx.navigation.NavGraph;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\bø\u0001\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\bø\u0001\u0000\u001a6\u0010\u0000\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, m3159d2 = {"AppBarConfiguration", "Landroidx/navigation/ui/AppBarConfiguration;", "topLevelMenu", "Landroid/view/Menu;", "drawerLayout", "Landroidx/customview/widget/Openable;", "fallbackOnNavigateUpListener", "Lkotlin/Function0;", "", "navGraph", "Landroidx/navigation/NavGraph;", "topLevelDestinationIds", "", "", "navigation-ui_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class AppBarConfigurationKt {
    public static final AppBarConfiguration AppBarConfiguration(NavGraph navGraph, Openable openable, Function0<Boolean> function0) {
        navGraph.getClass();
        function0.getClass();
        return new AppBarConfiguration.Builder(navGraph).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new C0695x56421ee5(function0)).build();
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(NavGraph navGraph, Openable openable, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            openable = null;
        }
        if ((i10 & 4) != 0) {
            function0 = C06921.INSTANCE;
        }
        navGraph.getClass();
        function0.getClass();
        return new AppBarConfiguration.Builder(navGraph).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new C0695x56421ee5(function0)).build();
    }

    /* JADX INFO: renamed from: androidx.navigation.ui.AppBarConfigurationKt$AppBarConfiguration$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m3159d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06921 extends Lambda implements Function0<Boolean> {
        public static final C06921 INSTANCE = new C06921();

        public C06921() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.FALSE;
        }
    }

    public static final AppBarConfiguration AppBarConfiguration(Menu menu, Openable openable, Function0<Boolean> function0) {
        menu.getClass();
        function0.getClass();
        return new AppBarConfiguration.Builder(menu).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new C0695x56421ee5(function0)).build();
    }

    public static final AppBarConfiguration AppBarConfiguration(Set<Integer> set, Openable openable, Function0<Boolean> function0) {
        set.getClass();
        function0.getClass();
        return new AppBarConfiguration.Builder(set).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new C0695x56421ee5(function0)).build();
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(Menu menu, Openable openable, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            openable = null;
        }
        if ((i10 & 4) != 0) {
            function0 = new Function0<Boolean>() { // from class: androidx.navigation.ui.AppBarConfigurationKt.AppBarConfiguration.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.FALSE;
                }
            };
        }
        menu.getClass();
        function0.getClass();
        return new AppBarConfiguration.Builder(menu).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new C0695x56421ee5(function0)).build();
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(Set set, Openable openable, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            openable = null;
        }
        if ((i10 & 4) != 0) {
            function0 = new Function0<Boolean>() { // from class: androidx.navigation.ui.AppBarConfigurationKt.AppBarConfiguration.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.FALSE;
                }
            };
        }
        set.getClass();
        function0.getClass();
        return new AppBarConfiguration.Builder((Set<Integer>) set).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new C0695x56421ee5(function0)).build();
    }
}
