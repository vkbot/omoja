package androidx.constraintlayout.motion.utils;

import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCache;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTimeCycle$TranslationYset extends ViewTimeCycle {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
    public boolean setProperty(View view, float f8, long j9, KeyCache keyCache) {
        view.setTranslationY(get(f8, j9, view, keyCache));
        return this.mContinue;
    }
}
