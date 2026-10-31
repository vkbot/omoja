package androidx.core.view.inputmethod;

import android.view.inputmethod.EditorInfo;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class EditorInfoCompat$Api30Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private EditorInfoCompat$Api30Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CharSequence getInitialSelectedText(@NonNull EditorInfo editorInfo, int i9) {
        return editorInfo.getInitialSelectedText(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CharSequence getInitialTextAfterCursor(@NonNull EditorInfo editorInfo, int i9, int i10) {
        return editorInfo.getInitialTextAfterCursor(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CharSequence getInitialTextBeforeCursor(@NonNull EditorInfo editorInfo, int i9, int i10) {
        return editorInfo.getInitialTextBeforeCursor(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setInitialSurroundingSubText(@NonNull EditorInfo editorInfo, CharSequence charSequence, int i9) {
        editorInfo.setInitialSurroundingSubText(charSequence, i9);
    }
}
