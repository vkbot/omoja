package androidx.core.text.util;

import android.text.Spannable;
import android.text.util.Linkify;
import android.text.util.Linkify$MatchFilter;
import android.text.util.Linkify$TransformFilter;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class LinkifyCompat$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LinkifyCompat$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean addLinks(Spannable spannable, Pattern pattern, String str, String[] strArr, Linkify$MatchFilter linkify$MatchFilter, Linkify$TransformFilter linkify$TransformFilter) {
        return Linkify.addLinks(spannable, pattern, str, strArr, linkify$MatchFilter, linkify$TransformFilter);
    }

    @DoNotInline
    public static void addLinks(TextView textView, Pattern pattern, String str, String[] strArr, Linkify$MatchFilter linkify$MatchFilter, Linkify$TransformFilter linkify$TransformFilter) {
        Linkify.addLinks(textView, pattern, str, strArr, linkify$MatchFilter, linkify$TransformFilter);
    }
}
