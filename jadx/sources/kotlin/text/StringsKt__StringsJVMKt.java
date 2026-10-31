package kotlin.text;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import p130l9.C2237i;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(m3158d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0081\b\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0081\b\u001a\u001d\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0081\b\u001a\u001d\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0081\b\u001a \u0010\b\u001a\u00020\t*\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a$\u0010\f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a$\u0010\f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a$\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a$\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a\r\u0010\u0012\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u0013\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u0014\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u0015\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\f\u0010\u0016\u001a\u00020\u0002*\u00020\u0017H\u0007\u001a \u0010\u0016\u001a\u00020\u0002*\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u0001H\u0007\u001a \u0010\u001a\u001a\u00020\u0017*\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u0001H\u0007\u001a\f\u0010\u001b\u001a\u00020\u0002*\u00020\u001cH\u0007\u001a*\u0010\u001b\u001a\u00020\u0002*\u00020\u001c2\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\tH\u0007\u001a\f\u0010\u001e\u001a\u00020\u001c*\u00020\u0002H\u0007\u001a*\u0010\u001e\u001a\u00020\u001c*\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\tH\u0007\u001a\r\u0010\u001a\u001a\u00020\u0017*\u00020\u0002H\u0087\b\u001a3\u0010\u001a\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u00012\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u0001H\u0087\b\u001a*\u0010!\u001a\u00020\u0002*\u00020\u00022\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010$0#\"\u0004\u0018\u00010$H\u0087\b¢\u0006\u0002\u0010%\u001a2\u0010!\u001a\u00020\u0002*\u00020&2\u0006\u0010!\u001a\u00020\u00022\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010$0#\"\u0004\u0018\u00010$H\u0087\b¢\u0006\u0002\u0010'\u001a4\u0010!\u001a\u00020\u0002*\u00020\u00022\b\u0010(\u001a\u0004\u0018\u00010)2\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010$0#\"\u0004\u0018\u00010$H\u0087\b¢\u0006\u0002\u0010*\u001a<\u0010!\u001a\u00020\u0002*\u00020&2\b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010!\u001a\u00020\u00022\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010$0#\"\u0004\u0018\u00010$H\u0087\b¢\u0006\u0002\u0010+\u001a\"\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00020-*\u00020.2\u0006\u0010/\u001a\u0002002\b\b\u0002\u00101\u001a\u00020\u0001\u001a\u0015\u00102\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0001H\u0087\b\u001a\u001d\u00102\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b\u001a\u001c\u00103\u001a\u00020\t*\u00020\u00022\u0006\u00104\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a$\u00103\u001a\u00020\t*\u00020\u00022\u0006\u00104\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a\u001c\u00105\u001a\u00020\t*\u00020\u00022\u0006\u00106\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a)\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020<H\u0087\b\u001a\u0019\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020<H\u0087\b\u001a!\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0087\b\u001a\u0011\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u001cH\u0087\b\u001a\u0011\u00107\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u0017H\u0087\b\u001a!\u00107\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u00172\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0087\b\u001a!\u00107\u001a\u00020\u00022\u0006\u0010>\u001a\u00020?2\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0087\b\u001a\u0011\u00107\u001a\u00020\u00022\u0006\u0010@\u001a\u00020AH\u0087\b\u001a\u0011\u00107\u001a\u00020\u00022\u0006\u0010B\u001a\u00020CH\u0087\b\u001a\u0015\u0010D\u001a\u00020\u0001*\u00020\u00022\u0006\u0010E\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010F\u001a\u00020\u0001*\u00020\u00022\u0006\u0010E\u001a\u00020\u0001H\u0087\b\u001a\u001d\u0010G\u001a\u00020\u0001*\u00020\u00022\u0006\u0010H\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\b\u001a\u001c\u0010I\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a\u0015\u0010J\u001a\u00020\t*\u00020\u00022\u0006\u0010K\u001a\u00020.H\u0087\b\u001a\u0015\u0010J\u001a\u00020\t*\u00020\u00022\u0006\u0010B\u001a\u00020AH\u0087\b\u001a\u0019\u0010J\u001a\u00020\t*\u0004\u0018\u00010.2\b\u0010\n\u001a\u0004\u0018\u00010.H\u0087\u0004\u001a \u0010J\u001a\u00020\t*\u0004\u0018\u00010.2\b\u0010\n\u001a\u0004\u0018\u00010.2\u0006\u0010\u000b\u001a\u00020\tH\u0007\u001a\r\u0010L\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u001d\u0010M\u001a\u00020\u0001*\u00020\u00022\u0006\u0010E\u001a\u00020\u00012\u0006\u0010N\u001a\u00020\u0001H\u0087\b\u001a4\u0010O\u001a\u00020\t*\u00020.2\u0006\u0010P\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020.2\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a4\u0010O\u001a\u00020\t*\u00020\u00022\u0006\u0010P\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a\u0015\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\b\u001a\u0015\u0010\u0015\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\b\u001a\u0015\u0010\u0012\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\b\u001a\u0015\u0010\u0013\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\b\u001a\u0017\u0010R\u001a\u00020\u001c*\u00020\u00022\b\b\u0002\u0010;\u001a\u00020<H\u0087\b\u001a\u0017\u0010S\u001a\u000200*\u00020\u00022\b\b\u0002\u0010T\u001a\u00020\u0001H\u0087\b\u001a\f\u0010U\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\u0014\u0010U\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0007\u001a\f\u0010V\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\u0014\u0010V\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0007\u001a\u0012\u0010W\u001a\u00020\u0002*\u00020.2\u0006\u0010X\u001a\u00020\u0001\"%\u0010Y\u001a\u0012\u0012\u0004\u0012\u00020\u00020Zj\b\u0012\u0004\u0012\u00020\u0002`[*\u00020&8F¢\u0006\u0006\u001a\u0004\b\\\u0010]¨\u0006^"}, m3159d2 = {"nativeIndexOf", "", "", "ch", "", "fromIndex", "str", "nativeLastIndexOf", "equals", "", "other", "ignoreCase", "replace", "oldChar", "newChar", "oldValue", "newValue", "replaceFirst", "toUpperCase", "uppercase", "toLowerCase", "lowercase", "concatToString", "", "startIndex", "endIndex", "toCharArray", "decodeToString", "", "throwOnInvalidSequence", "encodeToByteArray", "destination", "destinationOffset", "format", "args", "", "", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Lkotlin/String$Companion;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "locale", "Ljava/util/Locale;", "(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "split", "", "", "regex", "Ljava/util/regex/Pattern;", "limit", "substring", "startsWith", "prefix", "endsWith", "suffix", "String", "bytes", TypedValues.CycleType.S_WAVE_OFFSET, "length", "charset", "Ljava/nio/charset/Charset;", "chars", "codePoints", "", "stringBuffer", "Ljava/lang/StringBuffer;", "stringBuilder", "Ljava/lang/StringBuilder;", "codePointAt", "index", "codePointBefore", "codePointCount", "beginIndex", "compareTo", "contentEquals", "charSequence", "intern", "offsetByCodePoints", "codePointOffset", "regionMatches", "thisOffset", "otherOffset", "toByteArray", "toPattern", "flags", "capitalize", "decapitalize", "repeat", "n", "CASE_INSENSITIVE_ORDER", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getCASE_INSENSITIVE_ORDER", "(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;", "kotlin-stdlib"}, m3160k = 5, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX, m3164xs = "kotlin/text/StringsKt")
@SourceDebugExtension({"SMAP\nStringsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,814:1\n1179#2,2:815\n1#3:817\n*S KotlinDebug\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n*L\n73#1:815,2\n*E\n"})
public class StringsKt__StringsJVMKt extends StringsKt__StringNumberConversionsKt {
    @InlineOnly
    private static final String String(byte[] bArr, int i10, int i11, Charset charset) {
        bArr.getClass();
        charset.getClass();
        return new String(bArr, i10, i11, charset);
    }

    @SinceKotlin(version = "1.4")
    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(locale) else it.toString() }", imports = {}))
    @LowPriorityInOverloadResolution
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String capitalize(String str, Locale locale) {
        str.getClass();
        locale.getClass();
        if (str.length() <= 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if (!Character.isLowerCase(cCharAt)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char titleCase = Character.toTitleCase(cCharAt);
        if (titleCase != Character.toUpperCase(cCharAt)) {
            sb.append(titleCase);
        } else {
            String upperCase = str.substring(0, 1).toUpperCase(locale);
            upperCase.getClass();
            sb.append(upperCase);
        }
        sb.append(str.substring(1));
        return sb.toString();
    }

    @InlineOnly
    private static final int codePointAt(String str, int i10) {
        str.getClass();
        return str.codePointAt(i10);
    }

    @InlineOnly
    private static final int codePointBefore(String str, int i10) {
        str.getClass();
        return str.codePointBefore(i10);
    }

    @InlineOnly
    private static final int codePointCount(String str, int i10, int i11) {
        str.getClass();
        return str.codePointCount(i10, i11);
    }

    public static final int compareTo(String str, String str2, boolean z9) {
        str.getClass();
        str2.getClass();
        return z9 ? str.compareToIgnoreCase(str2) : str.compareTo(str2);
    }

    public static /* synthetic */ int compareTo$default(String str, String str2, boolean z9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        return compareTo(str, str2, z9);
    }

    @SinceKotlin(version = "1.4")
    public static String concatToString(char[] cArr, int i10, int i11) {
        cArr.getClass();
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, cArr.length);
        return new String(cArr, i10, i11 - i10);
    }

    public static /* synthetic */ String concatToString$default(char[] cArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = cArr.length;
        }
        return concatToString(cArr, i10, i11);
    }

    @SinceKotlin(version = "1.5")
    public static final boolean contentEquals(CharSequence charSequence, CharSequence charSequence2) {
        return (!(charSequence instanceof String) || charSequence2 == null) ? StringsKt__StringsKt.contentEqualsImpl(charSequence, charSequence2) : ((String) charSequence).contentEquals(charSequence2);
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(Locale.getDefault()) }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String decapitalize(String str) {
        str.getClass();
        if (str.length() <= 0 || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(0, 1);
        Locale locale = Locale.getDefault();
        locale.getClass();
        String lowerCase = strSubstring.toLowerCase(locale);
        lowerCase.getClass();
        sb.append(lowerCase);
        sb.append(str.substring(1));
        return sb.toString();
    }

    @SinceKotlin(version = "1.4")
    public static final String decodeToString(byte[] bArr, int i10, int i11, boolean z9) {
        bArr.getClass();
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, bArr.length);
        if (!z9) {
            return new String(bArr, i10, i11 - i10, Charsets.UTF_8);
        }
        CharsetDecoder charsetDecoderNewDecoder = Charsets.UTF_8.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        String string = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArr, i10, i11 - i10)).toString();
        string.getClass();
        return string;
    }

    public static /* synthetic */ String decodeToString$default(byte[] bArr, int i10, int i11, boolean z9, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        if ((i12 & 4) != 0) {
            z9 = false;
        }
        return decodeToString(bArr, i10, i11, z9);
    }

    @SinceKotlin(version = "1.4")
    public static final byte[] encodeToByteArray(String str, int i10, int i11, boolean z9) throws CharacterCodingException {
        str.getClass();
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, str.length());
        if (!z9) {
            byte[] bytes = str.substring(i10, i11).getBytes(Charsets.UTF_8);
            bytes.getClass();
            return bytes;
        }
        CharsetEncoder charsetEncoderNewEncoder = Charsets.UTF_8.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        ByteBuffer byteBufferEncode = charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).encode(CharBuffer.wrap(str, i10, i11));
        if (byteBufferEncode.hasArray() && byteBufferEncode.arrayOffset() == 0) {
            int iRemaining = byteBufferEncode.remaining();
            byte[] bArrArray = byteBufferEncode.array();
            bArrArray.getClass();
            if (iRemaining == bArrArray.length) {
                byte[] bArrArray2 = byteBufferEncode.array();
                bArrArray2.getClass();
                return bArrArray2;
            }
        }
        byte[] bArr = new byte[byteBufferEncode.remaining()];
        byteBufferEncode.get(bArr);
        return bArr;
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(String str, int i10, int i11, boolean z9, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        if ((i12 & 4) != 0) {
            z9 = false;
        }
        return encodeToByteArray(str, i10, i11, z9);
    }

    public static final boolean endsWith(String str, String str2, boolean z9) {
        str.getClass();
        str2.getClass();
        return !z9 ? str.endsWith(str2) : regionMatches(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    public static /* synthetic */ boolean endsWith$default(String str, String str2, boolean z9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        return endsWith(str, str2, z9);
    }

    public static boolean equals(String str, String str2, boolean z9) {
        if (str == null) {
            return str2 == null;
        }
        return !z9 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static /* synthetic */ boolean equals$default(String str, String str2, boolean z9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        return equals(str, str2, z9);
    }

    @InlineOnly
    private static final String format(StringCompanionObject stringCompanionObject, String str, Object... objArr) {
        stringCompanionObject.getClass();
        str.getClass();
        objArr.getClass();
        return String.format(str, Arrays.copyOf(objArr, objArr.length));
    }

    public static Comparator<String> getCASE_INSENSITIVE_ORDER(StringCompanionObject stringCompanionObject) {
        stringCompanionObject.getClass();
        Comparator<String> comparator = String.CASE_INSENSITIVE_ORDER;
        comparator.getClass();
        return comparator;
    }

    @InlineOnly
    private static final String intern(String str) {
        str.getClass();
        String strIntern = str.intern();
        strIntern.getClass();
        return strIntern;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String lowercase(String str, Locale locale) {
        str.getClass();
        locale.getClass();
        String lowerCase = str.toLowerCase(locale);
        lowerCase.getClass();
        return lowerCase;
    }

    @InlineOnly
    private static final int nativeIndexOf(String str, String str2, int i10) {
        str.getClass();
        str2.getClass();
        return str.indexOf(str2, i10);
    }

    @InlineOnly
    private static final int nativeLastIndexOf(String str, String str2, int i10) {
        str.getClass();
        str2.getClass();
        return str.lastIndexOf(str2, i10);
    }

    @InlineOnly
    private static final int offsetByCodePoints(String str, int i10, int i11) {
        str.getClass();
        return str.offsetByCodePoints(i10, i11);
    }

    public static final boolean regionMatches(CharSequence charSequence, int i10, CharSequence charSequence2, int i11, int i12, boolean z9) {
        charSequence.getClass();
        charSequence2.getClass();
        return ((charSequence instanceof String) && (charSequence2 instanceof String)) ? regionMatches((String) charSequence, i10, (String) charSequence2, i11, i12, z9) : StringsKt__StringsKt.regionMatchesImpl(charSequence, i10, charSequence2, i11, i12, z9);
    }

    public static /* synthetic */ boolean regionMatches$default(CharSequence charSequence, int i10, CharSequence charSequence2, int i11, int i12, boolean z9, int i13, Object obj) {
        if ((i13 & 16) != 0) {
            z9 = false;
        }
        return regionMatches(charSequence, i10, charSequence2, i11, i12, z9);
    }

    public static String repeat(CharSequence charSequence, int i10) {
        charSequence.getClass();
        if (i10 < 0) {
            C2237i.m3595b(i10, 46, "Count 'n' must be non-negative, but was ");
            return null;
        }
        if (i10 == 0) {
            return "";
        }
        int i11 = 1;
        if (i10 == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length != 1) {
            StringBuilder sb = new StringBuilder(charSequence.length() * i10);
            if (1 <= i10) {
                while (true) {
                    sb.append(charSequence);
                    if (i11 == i10) {
                        break;
                    }
                    i11++;
                }
            }
            return sb.toString();
        }
        char cCharAt = charSequence.charAt(0);
        char[] cArr = new char[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            cArr[i12] = cCharAt;
        }
        return new String(cArr);
    }

    public static final String replace(String str, String str2, String str3, boolean z9) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        int i10 = 0;
        int iIndexOf = StringsKt__StringsKt.indexOf(str, str2, 0, z9);
        if (iIndexOf < 0) {
            return str;
        }
        int length = str2.length();
        int iCoerceAtLeast = RangesKt.coerceAtLeast(length, 1);
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i10, iIndexOf);
            sb.append(str3);
            i10 = iIndexOf + length;
            if (iIndexOf >= str.length()) {
                break;
            }
            iIndexOf = StringsKt__StringsKt.indexOf(str, str2, iIndexOf + iCoerceAtLeast, z9);
        } while (iIndexOf > 0);
        sb.append((CharSequence) str, i10, str.length());
        return sb.toString();
    }

    public static /* synthetic */ String replace$default(String str, char c, char c10, boolean z9, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z9 = false;
        }
        return replace(str, c, c10, z9);
    }

    public static final String replaceFirst(String str, String str2, String str3, boolean z9) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default(str, str2, 0, z9, 2, (Object) null);
        return iIndexOf$default < 0 ? str : StringsKt__StringsKt.replaceRange((CharSequence) str, iIndexOf$default, str2.length() + iIndexOf$default, (CharSequence) str3).toString();
    }

    public static /* synthetic */ String replaceFirst$default(String str, char c, char c10, boolean z9, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z9 = false;
        }
        return replaceFirst(str, c, c10, z9);
    }

    public static final List<String> split(CharSequence charSequence, Pattern pattern, int i10) {
        charSequence.getClass();
        pattern.getClass();
        StringsKt__StringsKt.requireNonNegativeLimit(i10);
        if (i10 == 0) {
            i10 = -1;
        }
        String[] strArrSplit = pattern.split(charSequence, i10);
        strArrSplit.getClass();
        return ArraysKt.asList(strArrSplit);
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, Pattern pattern, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return split(charSequence, pattern, i10);
    }

    public static boolean startsWith(String str, String str2, boolean z9) {
        str.getClass();
        str2.getClass();
        return !z9 ? str.startsWith(str2) : regionMatches(str, 0, str2, 0, str2.length(), z9);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, boolean z9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z9 = false;
        }
        return startsWith(str, str2, z9);
    }

    @InlineOnly
    private static final String substring(String str, int i10) {
        str.getClass();
        return str.substring(i10);
    }

    @InlineOnly
    private static final byte[] toByteArray(String str, Charset charset) {
        str.getClass();
        charset.getClass();
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        return bytes;
    }

    public static /* synthetic */ byte[] toByteArray$default(String str, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        str.getClass();
        charset.getClass();
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        return bytes;
    }

    @SinceKotlin(version = "1.4")
    public static final char[] toCharArray(String str, int i10, int i11) {
        str.getClass();
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i10, i11, str.length());
        char[] cArr = new char[i11 - i10];
        str.getChars(i10, i11, cArr, 0);
        return cArr;
    }

    public static /* synthetic */ char[] toCharArray$default(String str, char[] cArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = str.length();
        }
        str.getClass();
        cArr.getClass();
        str.getChars(i11, i12, cArr, i10);
        return cArr;
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final String toLowerCase(String str, Locale locale) {
        str.getClass();
        locale.getClass();
        String lowerCase = str.toLowerCase(locale);
        lowerCase.getClass();
        return lowerCase;
    }

    @InlineOnly
    private static final Pattern toPattern(String str, int i10) {
        str.getClass();
        Pattern patternCompile = Pattern.compile(str, i10);
        patternCompile.getClass();
        return patternCompile;
    }

    public static /* synthetic */ Pattern toPattern$default(String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        str.getClass();
        Pattern patternCompile = Pattern.compile(str, i10);
        patternCompile.getClass();
        return patternCompile;
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final String toUpperCase(String str, Locale locale) {
        str.getClass();
        locale.getClass();
        String upperCase = str.toUpperCase(locale);
        upperCase.getClass();
        return upperCase;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String uppercase(String str, Locale locale) {
        str.getClass();
        locale.getClass();
        String upperCase = str.toUpperCase(locale);
        upperCase.getClass();
        return upperCase;
    }

    @InlineOnly
    private static final String substring(String str, int i10, int i11) {
        str.getClass();
        return str.substring(i10, i11);
    }

    public static /* synthetic */ String replace$default(String str, String str2, String str3, boolean z9, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z9 = false;
        }
        return replace(str, str2, str3, z9);
    }

    public static /* synthetic */ String replaceFirst$default(String str, String str2, String str3, boolean z9, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z9 = false;
        }
        return replaceFirst(str, str2, str3, z9);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, int i10, boolean z9, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z9 = false;
        }
        return startsWith(str, str2, i10, z9);
    }

    @InlineOnly
    private static final int nativeIndexOf(String str, char c, int i10) {
        str.getClass();
        return str.indexOf(c, i10);
    }

    @InlineOnly
    private static final int nativeLastIndexOf(String str, char c, int i10) {
        str.getClass();
        return str.lastIndexOf(c, i10);
    }

    @InlineOnly
    private static final String String(byte[] bArr, Charset charset) {
        bArr.getClass();
        charset.getClass();
        return new String(bArr, charset);
    }

    @InlineOnly
    private static final String String(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        return new String(bArr, i10, i11, Charsets.UTF_8);
    }

    @InlineOnly
    private static final String String(byte[] bArr) {
        bArr.getClass();
        return new String(bArr, Charsets.UTF_8);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String lowercase(String str) {
        str.getClass();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return lowerCase;
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final String toLowerCase(String str) {
        str.getClass();
        String lowerCase = str.toLowerCase();
        lowerCase.getClass();
        return lowerCase;
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final String toUpperCase(String str) {
        str.getClass();
        String upperCase = str.toUpperCase();
        upperCase.getClass();
        return upperCase;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String uppercase(String str) {
        str.getClass();
        String upperCase = str.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        return upperCase;
    }

    @InlineOnly
    private static final String String(char[] cArr) {
        cArr.getClass();
        return new String(cArr);
    }

    @InlineOnly
    private static final String String(char[] cArr, int i10, int i11) {
        cArr.getClass();
        return new String(cArr, i10, i11);
    }

    @SinceKotlin(version = "1.4")
    public static String concatToString(char[] cArr) {
        cArr.getClass();
        return new String(cArr);
    }

    public static /* synthetic */ boolean regionMatches$default(String str, int i10, String str2, int i11, int i12, boolean z9, int i13, Object obj) {
        if ((i13 & 16) != 0) {
            z9 = false;
        }
        return regionMatches(str, i10, str2, i11, i12, z9);
    }

    @InlineOnly
    private static final String String(int[] iArr, int i10, int i11) {
        iArr.getClass();
        return new String(iArr, i10, i11);
    }

    @InlineOnly
    private static final String String(StringBuffer stringBuffer) {
        stringBuffer.getClass();
        return new String(stringBuffer);
    }

    @InlineOnly
    private static final boolean contentEquals(String str, StringBuffer stringBuffer) {
        str.getClass();
        stringBuffer.getClass();
        return str.contentEquals(stringBuffer);
    }

    @InlineOnly
    private static final String String(StringBuilder sb) {
        sb.getClass();
        return new String(sb);
    }

    @InlineOnly
    private static final boolean contentEquals(String str, CharSequence charSequence) {
        str.getClass();
        charSequence.getClass();
        return str.contentEquals(charSequence);
    }

    @InlineOnly
    private static final String format(String str, Object... objArr) {
        str.getClass();
        objArr.getClass();
        return String.format(str, Arrays.copyOf(objArr, objArr.length));
    }

    @SinceKotlin(version = "1.5")
    public static final boolean contentEquals(CharSequence charSequence, CharSequence charSequence2, boolean z9) {
        if (z9) {
            return StringsKt__StringsKt.contentEqualsIgnoreCaseImpl(charSequence, charSequence2);
        }
        return contentEquals(charSequence, charSequence2);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final String format(String str, Locale locale, Object... objArr) {
        str.getClass();
        objArr.getClass();
        return String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final String format(StringCompanionObject stringCompanionObject, Locale locale, String str, Object... objArr) {
        stringCompanionObject.getClass();
        str.getClass();
        objArr.getClass();
        return String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
    }

    @InlineOnly
    private static final char[] toCharArray(String str) {
        str.getClass();
        char[] charArray = str.toCharArray();
        charArray.getClass();
        return charArray;
    }

    @InlineOnly
    private static final char[] toCharArray(String str, char[] cArr, int i10, int i11, int i12) {
        str.getClass();
        cArr.getClass();
        str.getChars(i11, i12, cArr, i10);
        return cArr;
    }

    public static boolean startsWith(String str, String str2, int i10, boolean z9) {
        str.getClass();
        str2.getClass();
        if (!z9) {
            return str.startsWith(str2, i10);
        }
        return regionMatches(str, i10, str2, 0, str2.length(), z9);
    }

    public static /* synthetic */ char[] toCharArray$default(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return toCharArray(str, i10, i11);
    }

    public static boolean regionMatches(String str, int i10, String str2, int i11, int i12, boolean z9) {
        str.getClass();
        str2.getClass();
        if (!z9) {
            return str.regionMatches(i10, str2, i11, i12);
        }
        return str.regionMatches(z9, i10, str2, i11, i12);
    }

    public static final String replaceFirst(String str, char c, char c10, boolean z9) {
        str.getClass();
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default(str, c, 0, z9, 2, (Object) null);
        return iIndexOf$default < 0 ? str : StringsKt__StringsKt.replaceRange((CharSequence) str, iIndexOf$default, iIndexOf$default + 1, (CharSequence) String.valueOf(c10)).toString();
    }

    @SinceKotlin(version = "1.4")
    public static String decodeToString(byte[] bArr) {
        bArr.getClass();
        return new String(bArr, Charsets.UTF_8);
    }

    @SinceKotlin(version = "1.4")
    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(locale) }", imports = {}))
    @LowPriorityInOverloadResolution
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String decapitalize(String str, Locale locale) {
        str.getClass();
        locale.getClass();
        if (str.length() <= 0 || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String lowerCase = str.substring(0, 1).toLowerCase(locale);
        lowerCase.getClass();
        sb.append(lowerCase);
        sb.append(str.substring(1));
        return sb.toString();
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String capitalize(String str) {
        str.getClass();
        Locale locale = Locale.getDefault();
        locale.getClass();
        return capitalize(str, locale);
    }

    public static final String replace(String str, char c, char c10, boolean z9) {
        str.getClass();
        if (!z9) {
            String strReplace = str.replace(c, c10);
            strReplace.getClass();
            return strReplace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (CharsKt__CharKt.equals(cCharAt, c, z9)) {
                cCharAt = c10;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    @SinceKotlin(version = "1.4")
    public static final byte[] encodeToByteArray(String str) {
        str.getClass();
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        bytes.getClass();
        return bytes;
    }
}
