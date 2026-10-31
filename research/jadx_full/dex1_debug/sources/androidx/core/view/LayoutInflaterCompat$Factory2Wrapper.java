package androidx.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater$Factory2;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LayoutInflaterCompat$Factory2Wrapper implements LayoutInflater$Factory2 {
    final LayoutInflaterFactory mDelegateFactory;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LayoutInflaterCompat$Factory2Wrapper(LayoutInflaterFactory layoutInflaterFactory) {
        this.mDelegateFactory = layoutInflaterFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.LayoutInflater$Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return this.mDelegateFactory.onCreateView(null, str, context, attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String toString() {
        return getClass().getName() + "{" + this.mDelegateFactory + "}";
    }

    @Override // android.view.LayoutInflater$Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mDelegateFactory.onCreateView(view, str, context, attributeSet);
    }
}
