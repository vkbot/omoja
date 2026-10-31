package androidx.core.app;

import android.app.GrammaticalInflectionManager;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(34)
public class GrammaticalInflectionManagerCompat$Api34Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private GrammaticalInflectionManagerCompat$Api34Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getApplicationGrammaticalGender(Context context) {
        return getGrammaticalInflectionManager(context).getApplicationGrammaticalGender();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static GrammaticalInflectionManager getGrammaticalInflectionManager(Context context) {
        return (GrammaticalInflectionManager) context.getSystemService(GrammaticalInflectionManager.class);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setRequestedApplicationGrammaticalGender(Context context, int i9) {
        getGrammaticalInflectionManager(context).setRequestedApplicationGrammaticalGender(i9);
    }
}
