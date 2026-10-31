package androidx.core.text;

import android.text.Html$ImageGetter;
import android.text.Html$TagHandler;
import android.text.Spanned;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0086\b\u001a\u0017\u0010\t\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u0004H\u0086\b¨\u0006\u000b"}, d2 = {"parseAsHtml", "Landroid/text/Spanned;", "", "flags", "", "imageGetter", "Landroid/text/Html$ImageGetter;", "tagHandler", "Landroid/text/Html$TagHandler;", "toHtml", "option", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class HtmlKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Spanned parseAsHtml(String str, int i9, Html$ImageGetter html$ImageGetter, Html$TagHandler html$TagHandler) {
        return HtmlCompat.fromHtml(str, i9, html$ImageGetter, html$TagHandler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Spanned parseAsHtml$default(String str, int i9, Html$ImageGetter html$ImageGetter, Html$TagHandler html$TagHandler, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = 0;
        }
        if ((i10 & 2) != 0) {
            html$ImageGetter = null;
        }
        if ((i10 & 4) != 0) {
            html$TagHandler = null;
        }
        return HtmlCompat.fromHtml(str, i9, html$ImageGetter, html$TagHandler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final String toHtml(Spanned spanned, int i9) {
        return HtmlCompat.toHtml(spanned, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String toHtml$default(Spanned spanned, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = 0;
        }
        return HtmlCompat.toHtml(spanned, i9);
    }
}
