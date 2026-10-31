package androidx.core.graphics;

import android.graphics.Typeface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.content.res.ResourcesCompat$FontCallback;
import androidx.core.provider.FontsContractCompat$FontRequestCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class TypefaceCompat$ResourcesCallbackAdapter extends FontsContractCompat$FontRequestCallback {

    @Nullable
    private ResourcesCompat$FontCallback mFontCallback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypefaceCompat$ResourcesCallbackAdapter(@Nullable ResourcesCompat$FontCallback resourcesCompat$FontCallback) {
        this.mFontCallback = resourcesCompat$FontCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.provider.FontsContractCompat$FontRequestCallback
    public void onTypefaceRequestFailed(int i9) {
        ResourcesCompat$FontCallback resourcesCompat$FontCallback = this.mFontCallback;
        if (resourcesCompat$FontCallback != null) {
            resourcesCompat$FontCallback.onFontRetrievalFailed(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.provider.FontsContractCompat$FontRequestCallback
    public void onTypefaceRetrieved(@NonNull Typeface typeface) {
        ResourcesCompat$FontCallback resourcesCompat$FontCallback = this.mFontCallback;
        if (resourcesCompat$FontCallback != null) {
            resourcesCompat$FontCallback.onFontRetrieved(typeface);
        }
    }
}
