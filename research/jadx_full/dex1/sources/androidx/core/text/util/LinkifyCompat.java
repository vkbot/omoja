package androidx.core.text.util;

import android.os.Build$VERSION;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.text.util.Linkify$MatchFilter;
import android.text.util.Linkify$TransformFilter;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.net.MailTo;
import androidx.core.util.PatternsCompat;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class LinkifyCompat {
    private static final String[] EMPTY_STRING = new String[0];
    private static final Comparator<LinkifyCompat$LinkSpec> COMPARATOR = new a();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LinkifyCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int a(LinkifyCompat$LinkSpec linkifyCompat$LinkSpec, LinkifyCompat$LinkSpec linkifyCompat$LinkSpec2) {
        return lambda$static$0(linkifyCompat$LinkSpec, linkifyCompat$LinkSpec2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void addLinkMovementMethod(@NonNull TextView textView) {
        if ((textView.getMovementMethod() instanceof LinkMovementMethod) || !textView.getLinksClickable()) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean addLinks(@NonNull Spannable spannable, int i9) {
        Spannable spannable2;
        if (shouldAddLinksFallbackToFramework()) {
            return Linkify.addLinks(spannable, i9);
        }
        int i10 = 0;
        if (i9 == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(uRLSpanArr[length]);
        }
        if ((i9 & 4) != 0) {
            Linkify.addLinks(spannable, 4);
        }
        ArrayList arrayList = new ArrayList();
        if ((i9 & 1) != 0) {
            spannable2 = spannable;
            gatherLinks(arrayList, spannable2, PatternsCompat.AUTOLINK_WEB_URL, new String[]{"http://", "https://", "rtsp://"}, Linkify.sUrlMatchFilter, null);
        } else {
            spannable2 = spannable;
        }
        if ((i9 & 2) != 0) {
            gatherLinks(arrayList, spannable2, PatternsCompat.AUTOLINK_EMAIL_ADDRESS, new String[]{MailTo.MAILTO_SCHEME}, null, null);
        }
        if ((i9 & 8) != 0) {
            gatherMapLinks(arrayList, spannable2);
        }
        pruneOverlaps(arrayList, spannable2);
        if (arrayList.size() == 0) {
            return false;
        }
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            LinkifyCompat$LinkSpec linkifyCompat$LinkSpec = (LinkifyCompat$LinkSpec) obj;
            if (linkifyCompat$LinkSpec.frameworkAddedSpan == null) {
                applyLink(linkifyCompat$LinkSpec.url, linkifyCompat$LinkSpec.start, linkifyCompat$LinkSpec.end, spannable2);
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void applyLink(String str, int i9, int i10, Spannable spannable) {
        spannable.setSpan(new URLSpan(str), i9, i10, 33);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String findAddress(String str) {
        return Build$VERSION.SDK_INT >= 28 ? WebView.findAddress(str) : FindAddress.findAddress(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void gatherLinks(ArrayList<LinkifyCompat$LinkSpec> arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify$MatchFilter linkify$MatchFilter, Linkify$TransformFilter linkify$TransformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            String strGroup = matcher.group(0);
            if (linkify$MatchFilter == null || linkify$MatchFilter.acceptMatch(spannable, iStart, iEnd)) {
                if (strGroup != null) {
                    LinkifyCompat$LinkSpec linkifyCompat$LinkSpec = new LinkifyCompat$LinkSpec();
                    linkifyCompat$LinkSpec.url = makeUrl(strGroup, strArr, matcher, linkify$TransformFilter);
                    linkifyCompat$LinkSpec.start = iStart;
                    linkifyCompat$LinkSpec.end = iEnd;
                    arrayList.add(linkifyCompat$LinkSpec);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void gatherMapLinks(ArrayList<LinkifyCompat$LinkSpec> arrayList, Spannable spannable) {
        int iIndexOf;
        String string = spannable.toString();
        int i9 = 0;
        while (true) {
            try {
                String strFindAddress = findAddress(string);
                if (strFindAddress != null && (iIndexOf = string.indexOf(strFindAddress)) >= 0) {
                    LinkifyCompat$LinkSpec linkifyCompat$LinkSpec = new LinkifyCompat$LinkSpec();
                    int length = strFindAddress.length() + iIndexOf;
                    linkifyCompat$LinkSpec.start = iIndexOf + i9;
                    i9 += length;
                    linkifyCompat$LinkSpec.end = i9;
                    string = string.substring(length);
                    try {
                        linkifyCompat$LinkSpec.url = "geo:0,0?q=" + URLEncoder.encode(strFindAddress, "UTF-8");
                        arrayList.add(linkifyCompat$LinkSpec);
                    } catch (UnsupportedEncodingException unused) {
                    }
                }
                return;
            } catch (UnsupportedOperationException unused2) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ int lambda$static$0(LinkifyCompat$LinkSpec linkifyCompat$LinkSpec, LinkifyCompat$LinkSpec linkifyCompat$LinkSpec2) {
        int i9 = linkifyCompat$LinkSpec.start;
        int i10 = linkifyCompat$LinkSpec2.start;
        if (i9 < i10) {
            return -1;
        }
        if (i9 > i10) {
            return 1;
        }
        return Integer.compare(linkifyCompat$LinkSpec2.end, linkifyCompat$LinkSpec.end);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String makeUrl(@NonNull String str, @NonNull String[] strArr, Matcher matcher, @Nullable Linkify$TransformFilter linkify$TransformFilter) {
        boolean z8;
        if (linkify$TransformFilter != null) {
            str = linkify$TransformFilter.transformUrl(matcher, str);
        }
        String strConcat = str;
        int length = strArr.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                z8 = false;
                break;
            }
            String str2 = strArr[i9];
            if (strConcat.regionMatches(true, 0, str2, 0, str2.length())) {
                z8 = true;
                if (!strConcat.regionMatches(false, 0, str2, 0, str2.length())) {
                    strConcat = str2.concat(strConcat.substring(str2.length()));
                    break;
                }
                break;
            }
            i9++;
        }
        return (z8 || strArr.length <= 0) ? strConcat : ai.onnxruntime.a.p(new StringBuilder(), strArr[0], strConcat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void pruneOverlaps(ArrayList<LinkifyCompat$LinkSpec> arrayList, Spannable spannable) {
        int i9;
        int i10 = 0;
        for (URLSpan uRLSpan : (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class)) {
            LinkifyCompat$LinkSpec linkifyCompat$LinkSpec = new LinkifyCompat$LinkSpec();
            linkifyCompat$LinkSpec.frameworkAddedSpan = uRLSpan;
            linkifyCompat$LinkSpec.start = spannable.getSpanStart(uRLSpan);
            linkifyCompat$LinkSpec.end = spannable.getSpanEnd(uRLSpan);
            arrayList.add(linkifyCompat$LinkSpec);
        }
        Collections.sort(arrayList, COMPARATOR);
        int size = arrayList.size();
        while (i10 < size - 1) {
            LinkifyCompat$LinkSpec linkifyCompat$LinkSpec2 = arrayList.get(i10);
            int i11 = i10 + 1;
            LinkifyCompat$LinkSpec linkifyCompat$LinkSpec3 = arrayList.get(i11);
            int i12 = linkifyCompat$LinkSpec2.start;
            int i13 = linkifyCompat$LinkSpec3.start;
            if (i12 <= i13 && (i9 = linkifyCompat$LinkSpec2.end) > i13) {
                int i14 = linkifyCompat$LinkSpec3.end;
                int i15 = (i14 > i9 && i9 - i12 <= i14 - i13) ? i9 - i12 < i14 - i13 ? i10 : -1 : i11;
                if (i15 != -1) {
                    Object obj = arrayList.get(i15).frameworkAddedSpan;
                    if (obj != null) {
                        spannable.removeSpan(obj);
                    }
                    arrayList.remove(i15);
                    size--;
                }
            }
            i10 = i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean shouldAddLinksFallbackToFramework() {
        return Build$VERSION.SDK_INT >= 28;
    }

    public static boolean addLinks(@NonNull TextView textView, int i9) {
        if (shouldAddLinksFallbackToFramework()) {
            return Linkify.addLinks(textView, i9);
        }
        if (i9 == 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (addLinks((Spannable) text, i9)) {
                addLinkMovementMethod(textView);
                return true;
            }
        } else {
            SpannableString spannableStringValueOf = SpannableString.valueOf(text);
            if (addLinks(spannableStringValueOf, i9)) {
                addLinkMovementMethod(textView);
                textView.setText(spannableStringValueOf);
                return true;
            }
        }
        return false;
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str) {
        if (shouldAddLinksFallbackToFramework()) {
            Linkify.addLinks(textView, pattern, str);
        } else {
            addLinks(textView, pattern, str, (String[]) null, (Linkify$MatchFilter) null, (Linkify$TransformFilter) null);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify$MatchFilter linkify$MatchFilter, @Nullable Linkify$TransformFilter linkify$TransformFilter) {
        if (shouldAddLinksFallbackToFramework()) {
            Linkify.addLinks(textView, pattern, str, linkify$MatchFilter, linkify$TransformFilter);
        } else {
            addLinks(textView, pattern, str, (String[]) null, linkify$MatchFilter, linkify$TransformFilter);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify$MatchFilter linkify$MatchFilter, @Nullable Linkify$TransformFilter linkify$TransformFilter) {
        if (shouldAddLinksFallbackToFramework()) {
            LinkifyCompat$Api24Impl.addLinks(textView, pattern, str, strArr, linkify$MatchFilter, linkify$TransformFilter);
            return;
        }
        SpannableString spannableStringValueOf = SpannableString.valueOf(textView.getText());
        if (addLinks(spannableStringValueOf, pattern, str, strArr, linkify$MatchFilter, linkify$TransformFilter)) {
            textView.setText(spannableStringValueOf);
            addLinkMovementMethod(textView);
        }
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str) {
        if (shouldAddLinksFallbackToFramework()) {
            return Linkify.addLinks(spannable, pattern, str);
        }
        return addLinks(spannable, pattern, str, (String[]) null, (Linkify$MatchFilter) null, (Linkify$TransformFilter) null);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify$MatchFilter linkify$MatchFilter, @Nullable Linkify$TransformFilter linkify$TransformFilter) {
        if (shouldAddLinksFallbackToFramework()) {
            return Linkify.addLinks(spannable, pattern, str, linkify$MatchFilter, linkify$TransformFilter);
        }
        return addLinks(spannable, pattern, str, (String[]) null, linkify$MatchFilter, linkify$TransformFilter);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify$MatchFilter linkify$MatchFilter, @Nullable Linkify$TransformFilter linkify$TransformFilter) {
        String lowerCase;
        if (shouldAddLinksFallbackToFramework()) {
            return LinkifyCompat$Api24Impl.addLinks(spannable, pattern, str, strArr, linkify$MatchFilter, linkify$TransformFilter);
        }
        if (str == null) {
            str = "";
        }
        if (strArr == null || strArr.length < 1) {
            strArr = EMPTY_STRING;
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = str.toLowerCase(Locale.ROOT);
        int i9 = 0;
        while (i9 < strArr.length) {
            String str2 = strArr[i9];
            i9++;
            if (str2 == null) {
                lowerCase = "";
            } else {
                lowerCase = str2.toLowerCase(Locale.ROOT);
            }
            strArr2[i9] = lowerCase;
        }
        Matcher matcher = pattern.matcher(spannable);
        boolean z8 = false;
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            String strGroup = matcher.group(0);
            if ((linkify$MatchFilter != null ? linkify$MatchFilter.acceptMatch(spannable, iStart, iEnd) : true) && strGroup != null) {
                applyLink(makeUrl(strGroup, strArr2, matcher, linkify$TransformFilter), iStart, iEnd, spannable);
                z8 = true;
            }
        }
        return z8;
    }
}
