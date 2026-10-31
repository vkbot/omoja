package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.UiThread;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class AsyncListUtil$ViewCallback {
    public static final int HINT_SCROLL_ASC = 2;
    public static final int HINT_SCROLL_DESC = 1;
    public static final int HINT_SCROLL_NONE = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @UiThread
    public void extendRangeInto(@NonNull int[] iArr, @NonNull int[] iArr2, int i9) {
        int i10 = iArr[1];
        int i11 = iArr[0];
        int i12 = (i10 - i11) + 1;
        int i13 = i12 / 2;
        iArr2[0] = i11 - (i9 == 1 ? i12 : i13);
        if (i9 != 2) {
            i12 = i13;
        }
        iArr2[1] = i10 + i12;
    }

    @UiThread
    public abstract void getItemRangeInto(@NonNull int[] iArr);

    @UiThread
    public abstract void onDataRefresh();

    @UiThread
    public abstract void onItemLoaded(int i9);
}
