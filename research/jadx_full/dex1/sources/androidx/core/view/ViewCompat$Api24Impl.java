package androidx.core.view;

import android.content.ClipData;
import android.view.PointerIcon;
import android.view.View;
import android.view.View$DragShadowBuilder;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class ViewCompat$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewCompat$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void cancelDragAndDrop(@NonNull View view) {
        view.cancelDragAndDrop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void dispatchFinishTemporaryDetach(View view) {
        view.dispatchFinishTemporaryDetach();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void dispatchStartTemporaryDetach(View view) {
        view.dispatchStartTemporaryDetach();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setPointerIcon(@NonNull View view, PointerIcon pointerIcon) {
        view.setPointerIcon(pointerIcon);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean startDragAndDrop(@NonNull View view, @Nullable ClipData clipData, @NonNull View$DragShadowBuilder view$DragShadowBuilder, @Nullable Object obj, int i9) {
        return view.startDragAndDrop(clipData, view$DragShadowBuilder, obj, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void updateDragShadow(@NonNull View view, @NonNull View$DragShadowBuilder view$DragShadowBuilder) {
        view.updateDragShadow(view$DragShadowBuilder);
    }
}
