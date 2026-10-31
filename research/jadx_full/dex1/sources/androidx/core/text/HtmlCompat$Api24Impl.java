package androidx.core.text;

import android.text.Html;
import android.text.Html$ImageGetter;
import android.text.Html$TagHandler;
import android.text.Spanned;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class HtmlCompat$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private HtmlCompat$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Spanned fromHtml(String str, int i9) {
        return Html.fromHtml(str, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static String toHtml(Spanned spanned, int i9) {
        return Html.toHtml(spanned, i9);
    }

    @DoNotInline
    public static Spanned fromHtml(String str, int i9, Html$ImageGetter html$ImageGetter, Html$TagHandler html$TagHandler) {
        return Html.fromHtml(str, i9, html$ImageGetter, html$TagHandler);
    }
}
