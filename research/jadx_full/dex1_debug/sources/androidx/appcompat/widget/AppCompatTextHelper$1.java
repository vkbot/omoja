package androidx.appcompat.widget;

import android.graphics.Typeface;
import android.os.Build$VERSION;
import androidx.annotation.NonNull;
import androidx.core.content.res.ResourcesCompat$FontCallback;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatTextHelper$1 extends ResourcesCompat$FontCallback {
    final /* synthetic */ AppCompatTextHelper this$0;
    final /* synthetic */ int val$fontWeight;
    final /* synthetic */ int val$style;
    final /* synthetic */ WeakReference val$textViewWeak;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatTextHelper$1(AppCompatTextHelper appCompatTextHelper, int i9, int i10, WeakReference weakReference) {
        this.this$0 = appCompatTextHelper;
        this.val$fontWeight = i9;
        this.val$style = i10;
        this.val$textViewWeak = weakReference;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.content.res.ResourcesCompat$FontCallback
    public void onFontRetrieved(@NonNull Typeface typeface) {
        int i9;
        if (Build$VERSION.SDK_INT >= 28 && (i9 = this.val$fontWeight) != -1) {
            typeface = AppCompatTextHelper$Api28Impl.create(typeface, i9, (this.val$style & 2) != 0);
        }
        this.this$0.onAsyncTypefaceReceived(this.val$textViewWeak, typeface);
    }

    @Override // androidx.core.content.res.ResourcesCompat$FontCallback
    public void onFontRetrievalFailed(int i9) {
    }
}
