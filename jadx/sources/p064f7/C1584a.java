package p064f7;

import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: f7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1584a {

    /* JADX INFO: renamed from: c */
    public static final Pattern f3932c = Pattern.compile("(\\w+)\\s*=\\s*([^\\s#][^#]*)");

    /* JADX INFO: renamed from: d */
    public static final Pattern f3933d = Pattern.compile("\\s*,\\s*");

    /* JADX INFO: renamed from: a */
    public final String f3934a;

    /* JADX INFO: renamed from: b */
    public final String f3935b;

    public C1584a(String str, String str2) {
        this.f3934a = str;
        this.f3935b = str2;
    }

    /* JADX INFO: renamed from: a */
    public static Optional m2669a(CharSequence charSequence) {
        Matcher matcher = f3932c.matcher(charSequence);
        return !matcher.matches() ? Optional.empty() : Optional.of(new C1584a(matcher.group(1), matcher.group(2)));
    }
}
