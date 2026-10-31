package androidx.core.content.pm;

import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class ShortcutInfoCompatSaver$NoopImpl extends ShortcutInfoCompatSaver<Void> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.core.content.pm.ShortcutInfoCompatSaver
    public /* bridge */ /* synthetic */ Void addShortcuts(List list) {
        return addShortcuts2((List<ShortcutInfoCompat>) list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.core.content.pm.ShortcutInfoCompatSaver
    public /* bridge */ /* synthetic */ Void removeAllShortcuts() {
        return removeAllShortcuts2();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.core.content.pm.ShortcutInfoCompatSaver
    public /* bridge */ /* synthetic */ Void removeShortcuts(List list) {
        return removeShortcuts2((List<String>) list);
    }

    @Override // androidx.core.content.pm.ShortcutInfoCompatSaver
    /* JADX INFO: renamed from: addShortcuts, reason: avoid collision after fix types in other method */
    public Void addShortcuts2(List<ShortcutInfoCompat> list) {
        return null;
    }

    @Override // androidx.core.content.pm.ShortcutInfoCompatSaver
    /* JADX INFO: renamed from: removeAllShortcuts, reason: avoid collision after fix types in other method */
    public Void removeAllShortcuts2() {
        return null;
    }

    @Override // androidx.core.content.pm.ShortcutInfoCompatSaver
    /* JADX INFO: renamed from: removeShortcuts, reason: avoid collision after fix types in other method */
    public Void removeShortcuts2(List<String> list) {
        return null;
    }
}
