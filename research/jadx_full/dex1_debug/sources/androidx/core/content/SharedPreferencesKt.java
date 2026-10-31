package androidx.core.content;

import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\bH\u0087\b¨\u0006\t"}, d2 = {"edit", "", "Landroid/content/SharedPreferences;", "commit", "", "action", "Lkotlin/Function1;", "Landroid/content/SharedPreferences$Editor;", "Lkotlin/ExtensionFunctionType;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SharedPreferencesKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final void edit(SharedPreferences sharedPreferences, boolean z8, Function1<? super SharedPreferences$Editor, Unit> function1) {
        SharedPreferences$Editor sharedPreferences$EditorEdit = sharedPreferences.edit();
        function1.invoke(sharedPreferences$EditorEdit);
        if (z8) {
            sharedPreferences$EditorEdit.commit();
        } else {
            sharedPreferences$EditorEdit.apply();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void edit$default(SharedPreferences sharedPreferences, boolean z8, Function1 function1, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z8 = false;
        }
        SharedPreferences$Editor sharedPreferences$EditorEdit = sharedPreferences.edit();
        function1.invoke(sharedPreferences$EditorEdit);
        if (z8) {
            sharedPreferences$EditorEdit.commit();
        } else {
            sharedPreferences$EditorEdit.apply();
        }
    }
}
