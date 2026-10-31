package androidx.core.content.pm;

import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputContentInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class c {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int a(ShortcutManager shortcutManager) {
        return shortcutManager.getMaxShortcutCountPerActivity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ ShortcutManager b(Object obj) {
        return (ShortcutManager) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ InputContentInfo c(Object obj) {
        return (InputContentInfo) obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ Class d() {
        return ShortcutManager.class;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ List e(ShortcutManager shortcutManager) {
        return shortcutManager.getManifestShortcuts();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void f(ShortcutManager shortcutManager) {
        shortcutManager.removeAllDynamicShortcuts();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void g(ShortcutManager shortcutManager, String str) {
        shortcutManager.reportShortcutUsed(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void h(ShortcutManager shortcutManager, ArrayList arrayList) {
        shortcutManager.enableShortcuts(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void i(ShortcutManager shortcutManager, List list) {
        shortcutManager.addDynamicShortcuts(list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void j(ShortcutManager shortcutManager, List list, CharSequence charSequence) {
        shortcutManager.disableShortcuts(list, charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void k(EditorInfo editorInfo, String[] strArr) {
        editorInfo.contentMimeTypes = strArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean l(ShortcutInfo shortcutInfo) {
        return shortcutInfo.hasKeyFieldsOnly();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean m(ShortcutManager shortcutManager) {
        return shortcutManager.isRateLimitingActive();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean n(ShortcutManager shortcutManager, ArrayList arrayList) {
        return shortcutManager.updateShortcuts(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ String[] o(EditorInfo editorInfo) {
        return editorInfo.contentMimeTypes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int p(ShortcutManager shortcutManager) {
        return shortcutManager.getIconMaxHeight();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ List q(ShortcutManager shortcutManager) {
        return shortcutManager.getPinnedShortcuts();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void r(ShortcutManager shortcutManager, List list) {
        shortcutManager.removeDynamicShortcuts(list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean s(ShortcutManager shortcutManager, ArrayList arrayList) {
        return shortcutManager.setDynamicShortcuts(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ int t(ShortcutManager shortcutManager) {
        return shortcutManager.getIconMaxWidth();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ List u(ShortcutManager shortcutManager) {
        return shortcutManager.getDynamicShortcuts();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ boolean v(ShortcutManager shortcutManager, ArrayList arrayList) {
        return shortcutManager.addDynamicShortcuts(arrayList);
    }
}
