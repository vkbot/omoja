package androidx.activity;

import android.content.res.Resources;
import androidx.annotation.ColorInt;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J2\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00062\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0007J\u0012\u0010\f\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\u0006H\u0007J\u001c\u0010\u000e\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\u000f"}, d2 = {"Landroidx/activity/SystemBarStyle$Companion;", "", "()V", "auto", "Landroidx/activity/SystemBarStyle;", "lightScrim", "", "darkScrim", "detectDarkMode", "Lkotlin/Function1;", "Landroid/content/res/Resources;", "", "dark", "scrim", "light", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SystemBarStyle$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ SystemBarStyle$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: androidx.activity.SystemBarStyle$Companion */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SystemBarStyle auto$default(SystemBarStyle$Companion systemBarStyle$Companion, int i9, int i10, Function1 function1, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            function1 = SystemBarStyle$Companion$auto$1.INSTANCE;
        }
        return systemBarStyle$Companion.auto(i9, i10, function1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @JvmOverloads
    public final SystemBarStyle auto(@ColorInt int lightScrim, @ColorInt int darkScrim, Function1<? super Resources, Boolean> detectDarkMode) {
        detectDarkMode.getClass();
        return new SystemBarStyle(lightScrim, darkScrim, 0, detectDarkMode, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final SystemBarStyle dark(@ColorInt int scrim) {
        return new SystemBarStyle(scrim, scrim, 2, SystemBarStyle$Companion$dark$1.INSTANCE, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final SystemBarStyle light(@ColorInt int scrim, @ColorInt int darkScrim) {
        return new SystemBarStyle(scrim, darkScrim, 1, SystemBarStyle$Companion$light$1.INSTANCE, null);
    }

    private SystemBarStyle$Companion() {
    }

    @JvmStatic
    @JvmOverloads
    public final SystemBarStyle auto(@ColorInt int i9, @ColorInt int i10) {
        return auto$default(this, i9, i10, null, 4, null);
    }
}
