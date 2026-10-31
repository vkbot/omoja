package f7;

import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {
    public static final Pattern c = Pattern.compile("(\\w+)\\s*=\\s*([^\\s#][^#]*)");
    public static final Pattern d = Pattern.compile("\\s*,\\s*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2276b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(String str, String str2) {
        this.f2275a = str;
        this.f2276b = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Optional a(CharSequence charSequence) {
        Matcher matcher = c.matcher(charSequence);
        return !matcher.matches() ? Optional.empty() : Optional.of(new a(matcher.group(1), matcher.group(2)));
    }
}
