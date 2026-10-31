package kotlin.text;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¨\u0006\r"}, d2 = {"Lkotlin/text/Regex$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "fromLiteral", "Lkotlin/text/Regex;", "literal", HttpUrl.FRAGMENT_ENCODE_SET, "escape", "escapeReplacement", "ensureUnicodeCase", HttpUrl.FRAGMENT_ENCODE_SET, "flags", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class Regex$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Regex$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$ensureUnicodeCase(Regex$Companion regex$Companion, int i) {
        return regex$Companion.ensureUnicodeCase(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int ensureUnicodeCase(int flags) {
        return (flags & 2) != 0 ? flags | 64 : flags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String escape(String literal) {
        literal.getClass();
        String strQuote = Pattern.quote(literal);
        strQuote.getClass();
        return strQuote;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String escapeReplacement(String literal) {
        literal.getClass();
        String strQuoteReplacement = Matcher.quoteReplacement(literal);
        strQuoteReplacement.getClass();
        return strQuoteReplacement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Regex fromLiteral(String literal) {
        literal.getClass();
        return new Regex(literal, RegexOption.LITERAL);
    }

    private Regex$Companion() {
    }
}
