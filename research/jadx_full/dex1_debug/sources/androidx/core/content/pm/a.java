package androidx.core.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutInfo$Builder;
import android.graphics.drawable.Icon;
import android.os.PersistableBundle;
import android.os.UserHandle;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ CharSequence A(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getDisabledMessage();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean B(ShortcutInfo shortcutInfo) {
        return shortcutInfo.isDeclaredInManifest();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean C(ShortcutInfo shortcutInfo) {
        return shortcutInfo.isImmutable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean D(ShortcutInfo shortcutInfo) {
        return shortcutInfo.isEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getRank();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long b(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getLastChangedTimestamp();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ComponentName c(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getActivity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ShortcutInfo$Builder d(Context context, String str) {
        return new ShortcutInfo$Builder(context, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ShortcutInfo$Builder e(ShortcutInfo$Builder shortcutInfo$Builder, CharSequence charSequence) {
        return shortcutInfo$Builder.setShortLabel(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ShortcutInfo$Builder f(ShortcutInfo$Builder shortcutInfo$Builder, Intent[] intentArr) {
        return shortcutInfo$Builder.setIntents(intentArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ShortcutInfo g(ShortcutInfo$Builder shortcutInfo$Builder) {
        return shortcutInfo$Builder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ShortcutInfo h(Object obj) {
        return (ShortcutInfo) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ PersistableBundle i(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getExtras();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ UserHandle j(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getUserHandle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ CharSequence k(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getShortLabel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String l(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Set m(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getCategories();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void n() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void o(ShortcutInfo$Builder shortcutInfo$Builder, int i9) {
        shortcutInfo$Builder.setRank(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void p(ShortcutInfo$Builder shortcutInfo$Builder, ComponentName componentName) {
        shortcutInfo$Builder.setActivity(componentName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void q(ShortcutInfo$Builder shortcutInfo$Builder, Icon icon) {
        shortcutInfo$Builder.setIcon(icon);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void r(ShortcutInfo$Builder shortcutInfo$Builder, PersistableBundle persistableBundle) {
        shortcutInfo$Builder.setExtras(persistableBundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void s(ShortcutInfo$Builder shortcutInfo$Builder, CharSequence charSequence) {
        shortcutInfo$Builder.setLongLabel(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void t(ShortcutInfo$Builder shortcutInfo$Builder, Set set) {
        shortcutInfo$Builder.setCategories(set);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean u(ShortcutInfo shortcutInfo) {
        return shortcutInfo.isDynamic();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Intent[] v(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getIntents();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ CharSequence w(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getLongLabel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String x(ShortcutInfo shortcutInfo) {
        return shortcutInfo.getPackage();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void y(ShortcutInfo$Builder shortcutInfo$Builder, CharSequence charSequence) {
        shortcutInfo$Builder.setDisabledMessage(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean z(ShortcutInfo shortcutInfo) {
        return shortcutInfo.isPinned();
    }
}
