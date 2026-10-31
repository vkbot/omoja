package androidx.core.app;

import android.content.Context;
import android.os.Build$VERSION;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.OptIn;
import androidx.core.os.BuildCompat$PrereleaseSdkCheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class GrammaticalInflectionManagerCompat {
    public static final int GRAMMATICAL_GENDER_FEMININE = 2;
    public static final int GRAMMATICAL_GENDER_MASCULINE = 3;
    public static final int GRAMMATICAL_GENDER_NEUTRAL = 1;
    public static final int GRAMMATICAL_GENDER_NOT_SPECIFIED = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private GrammaticalInflectionManagerCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @AnyThread
    @OptIn(markerClass = {BuildCompat$PrereleaseSdkCheck.class})
    public static int getApplicationGrammaticalGender(@NonNull Context context) {
        if (Build$VERSION.SDK_INT >= 34) {
            return GrammaticalInflectionManagerCompat$Api34Impl.getApplicationGrammaticalGender(context);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @AnyThread
    @OptIn(markerClass = {BuildCompat$PrereleaseSdkCheck.class})
    public static void setRequestedApplicationGrammaticalGender(@NonNull Context context, int i9) {
        if (Build$VERSION.SDK_INT >= 34) {
            GrammaticalInflectionManagerCompat$Api34Impl.setRequestedApplicationGrammaticalGender(context, i9);
        }
    }
}
