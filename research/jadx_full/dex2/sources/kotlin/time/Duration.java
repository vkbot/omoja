package kotlin.time;

import j1.i;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@SinceKotlin(version = "1.6")
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0006\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 \u0089\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0089\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\f\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u000fJ\u0010\u0010\u0016\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010!\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\"\u0010\u001bJ\u0018\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0002¢\u0006\u0004\b%\u0010&J\u0018\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020'H\u0086\u0002¢\u0006\u0004\b%\u0010(J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0002¢\u0006\u0004\b*\u0010&J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020'H\u0086\u0002¢\u0006\u0004\b*\u0010(J\u0018\u0010)\u001a\u00020'2\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013H\u0000¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\r¢\u0006\u0004\b2\u0010\u000fJ\r\u00103\u001a\u00020\r¢\u0006\u0004\b4\u0010\u000fJ\r\u00105\u001a\u00020\r¢\u0006\u0004\b6\u0010\u000fJ\r\u00107\u001a\u00020\r¢\u0006\u0004\b8\u0010\u000fJ\u0018\u0010;\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b<\u0010=J\u009d\u0001\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2u\u0010@\u001aq\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(D\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0AH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010JJ\u0088\u0001\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2`\u0010@\u001a\\\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0KH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010LJs\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2K\u0010@\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0MH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010NJ^\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?26\u0010@\u001a2\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0OH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010PJ\u0015\u0010^\u001a\u00020'2\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\b_\u0010`J\u0015\u0010a\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\bb\u00100J\u0015\u0010c\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\bd\u0010eJ\u000f\u0010t\u001a\u00020uH\u0016¢\u0006\u0004\bv\u0010wJA\u0010x\u001a\u00020y*\u00060zj\u0002`{2\u0006\u0010|\u001a\u00020\t2\u0006\u0010}\u001a\u00020\t2\u0006\u0010~\u001a\u00020\t2\u0006\u0010.\u001a\u00020u2\u0006\u0010\u007f\u001a\u00020\rH\u0002¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J!\u0010t\u001a\u00020u2\u0006\u0010.\u001a\u00020\u00132\t\b\u0002\u0010\u0082\u0001\u001a\u00020\t¢\u0006\u0005\bv\u0010\u0083\u0001J\u000f\u0010\u0084\u0001\u001a\u00020u¢\u0006\u0005\b\u0085\u0001\u0010wJ\u0015\u0010\u0086\u0001\u001a\u00020\r2\t\u0010\u0019\u001a\u0005\u0018\u00010\u0087\u0001HÖ\u0003J\n\u0010\u0088\u0001\u001a\u00020\tHÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0015\u0010\b\u001a\u00020\t8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u00109\u001a\u00020\u00008F¢\u0006\u0006\u001a\u0004\b:\u0010\u0005R\u001a\u0010Q\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bR\u0010S\u001a\u0004\bT\u0010\u000bR\u001a\u0010U\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bV\u0010S\u001a\u0004\bW\u0010\u000bR\u001a\u0010X\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bY\u0010S\u001a\u0004\bZ\u0010\u000bR\u001a\u0010[\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\\\u0010S\u001a\u0004\b]\u0010\u000bR\u0011\u0010f\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bg\u0010\u0005R\u0011\u0010h\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bi\u0010\u0005R\u0011\u0010j\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bk\u0010\u0005R\u0011\u0010l\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bm\u0010\u0005R\u0011\u0010n\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bo\u0010\u0005R\u0011\u0010p\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bq\u0010\u0005R\u0011\u0010r\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bs\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u008a\u0001"}, d2 = {"Lkotlin/time/Duration;", HttpUrl.FRAGMENT_ENCODE_SET, "rawValue", HttpUrl.FRAGMENT_ENCODE_SET, "constructor-impl", "(J)J", "value", "getValue-impl", "unitDiscriminator", HttpUrl.FRAGMENT_ENCODE_SET, "getUnitDiscriminator-impl", "(J)I", "isInNanos", HttpUrl.FRAGMENT_ENCODE_SET, "isInNanos-impl", "(J)Z", "isInMillis", "isInMillis-impl", "storageUnit", "Lkotlin/time/DurationUnit;", "getStorageUnit-impl", "(J)Lkotlin/time/DurationUnit;", "unaryMinus", "unaryMinus-UwyO8pc", "plus", "other", "plus-LRDsOJo", "(JJ)J", "addValuesMixedRanges", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "minus", "minus-LRDsOJo", "times", "scale", "times-UwyO8pc", "(JI)J", HttpUrl.FRAGMENT_ENCODE_SET, "(JD)J", "div", "div-UwyO8pc", "div-LRDsOJo", "(JJ)D", "truncateTo", "unit", "truncateTo-UwyO8pc$kotlin_stdlib", "(JLkotlin/time/DurationUnit;)J", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "isInfinite", "isInfinite-impl", "isFinite", "isFinite-impl", "absoluteValue", "getAbsoluteValue-UwyO8pc", "compareTo", "compareTo-LRDsOJo", "(JJ)I", "toComponents", "T", "action", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "hoursComponent", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "toDouble", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toLong", "toLong-impl", "toInt", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "inWholeDays", "getInWholeDays-impl", "inWholeHours", "getInWholeHours-impl", "inWholeMinutes", "getInWholeMinutes-impl", "inWholeSeconds", "getInWholeSeconds-impl", "inWholeMilliseconds", "getInWholeMilliseconds-impl", "inWholeMicroseconds", "getInWholeMicroseconds-impl", "inWholeNanoseconds", "getInWholeNanoseconds-impl", "toString", HttpUrl.FRAGMENT_ENCODE_SET, "toString-impl", "(J)Ljava/lang/String;", "appendFractional", HttpUrl.FRAGMENT_ENCODE_SET, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "appendFractional-impl", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "toIsoString", "toIsoString-impl", "equals", HttpUrl.FRAGMENT_ENCODE_SET, "hashCode", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1062:1\n37#1:1063\n37#1:1064\n37#1:1065\n37#1:1066\n37#1:1067\n500#1:1068\n517#1:1076\n170#2,6:1069\n1#3:1075\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n38#1:1063\n39#1:1064\n274#1:1065\n294#1:1066\n478#1:1067\n727#1:1068\n818#1:1076\n769#1:1069,6\n*E\n"})
public final class Duration implements Comparable<Duration> {
    private final long rawValue;
    public static final Duration$Companion Companion = new Duration$Companion(null);
    private static final long ZERO = m35constructorimpl(0);
    private static final long INFINITE = DurationKt.access$durationOfMillis(DurationKt.MAX_MILLIS);
    private static final long NEG_INFINITE = DurationKt.access$durationOfMillis(-4611686018427387903L);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Duration(long j) {
        this.rawValue = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$getINFINITE$cp() {
        return INFINITE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$getNEG_INFINITE$cp() {
        return NEG_INFINITE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ long access$getZERO$cp() {
        return ZERO;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    private static final long m31addValuesMixedRangesUwyO8pc(long j, long j2, long j3) {
        long jAccess$nanosToMillis = DurationKt.access$nanosToMillis(j3);
        long j4 = j2 + jAccess$nanosToMillis;
        if (-4611686018426L > j4 || j4 >= 4611686018427L) {
            return DurationKt.access$durationOfMillis(RangesKt.coerceIn(j4, -4611686018427387903L, DurationKt.MAX_MILLIS));
        }
        return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(j4) + (j3 - DurationKt.access$millisToNanos(jAccess$nanosToMillis)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: appendFractional-impl, reason: not valid java name */
    private static final void m32appendFractionalimpl(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            String strY = StringsKt.y(i3, String.valueOf(i2));
            int i4 = -1;
            int length = strY.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strY.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (z || i6 >= 3) {
                sb.append((CharSequence) strY, 0, ((i4 + 3) / 3) * 3);
            } else {
                sb.append((CharSequence) strY, 0, i6);
            }
        }
        sb.append(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m33boximpl(long j) {
        return new Duration(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m34compareToLRDsOJo(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return Intrinsics.compare(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return m61isNegativeimpl(j) ? -i : i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m35constructorimpl(long j) {
        if (!DurationJvmKt.getDurationAssertionsEnabled()) {
            return j;
        }
        if (m59isInNanosimpl(j)) {
            long jM55getValueimpl = m55getValueimpl(j);
            if (-4611686018426999999L <= jM55getValueimpl && jM55getValueimpl < 4611686018427000000L) {
                return j;
            }
            i.e(ai.onnxruntime.a.n(new StringBuilder(), m55getValueimpl(j), " ns is out of nanoseconds range"));
            return 0L;
        }
        long jM55getValueimpl2 = m55getValueimpl(j);
        if (-4611686018427387903L > jM55getValueimpl2 || jM55getValueimpl2 >= 4611686018427387904L) {
            i.e(ai.onnxruntime.a.n(new StringBuilder(), m55getValueimpl(j), " ms is out of milliseconds range"));
            return 0L;
        }
        long jM55getValueimpl3 = m55getValueimpl(j);
        if (-4611686018426L > jM55getValueimpl3 || jM55getValueimpl3 >= 4611686018427L) {
            return j;
        }
        i.e(ai.onnxruntime.a.n(new StringBuilder(), m55getValueimpl(j), " ms is denormalized"));
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: div-LRDsOJo, reason: not valid java name */
    public static final double m36divLRDsOJo(long j, long j2) {
        DurationUnit durationUnit = (DurationUnit) ComparisonsKt.f(m53getStorageUnitimpl(j), m53getStorageUnitimpl(j2));
        return m71toDoubleimpl(j, durationUnit) / m71toDoubleimpl(j2, durationUnit);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m38divUwyO8pc(long j, int i) {
        if (i == 0) {
            if (m62isPositiveimpl(j)) {
                return INFINITE;
            }
            if (m61isNegativeimpl(j)) {
                return NEG_INFINITE;
            }
            i.k("Dividing zero duration by zero yields an undefined result.");
            return 0L;
        }
        if (m59isInNanosimpl(j)) {
            return DurationKt.access$durationOfNanos(m55getValueimpl(j) / ((long) i));
        }
        if (m60isInfiniteimpl(j)) {
            return m66timesUwyO8pc(j, MathKt.getSign(i));
        }
        long j2 = i;
        long jM55getValueimpl = m55getValueimpl(j) / j2;
        if (-4611686018426L > jM55getValueimpl || jM55getValueimpl >= 4611686018427L) {
            return DurationKt.access$durationOfMillis(jM55getValueimpl);
        }
        return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(jM55getValueimpl) + (DurationKt.access$millisToNanos(m55getValueimpl(j) - (jM55getValueimpl * j2)) / j2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m39equalsimpl(long j, Object obj) {
        return (obj instanceof Duration) && j == ((Duration) obj).getRawValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m40equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m41getAbsoluteValueUwyO8pc(long j) {
        return m61isNegativeimpl(j) ? m79unaryMinusUwyO8pc(j) : j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m42getHoursComponentimpl(long j) {
        if (m60isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m44getInWholeHoursimpl(j) % ((long) 24));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m43getInWholeDaysimpl(long j) {
        return m74toLongimpl(j, DurationUnit.DAYS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m44getInWholeHoursimpl(long j) {
        return m74toLongimpl(j, DurationUnit.HOURS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getInWholeMicroseconds-impl, reason: not valid java name */
    public static final long m45getInWholeMicrosecondsimpl(long j) {
        return m74toLongimpl(j, DurationUnit.MICROSECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m46getInWholeMillisecondsimpl(long j) {
        return (m58isInMillisimpl(j) && m57isFiniteimpl(j)) ? m55getValueimpl(j) : m74toLongimpl(j, DurationUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m47getInWholeMinutesimpl(long j) {
        return m74toLongimpl(j, DurationUnit.MINUTES);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getInWholeNanoseconds-impl, reason: not valid java name */
    public static final long m48getInWholeNanosecondsimpl(long j) {
        long jM55getValueimpl = m55getValueimpl(j);
        if (m59isInNanosimpl(j)) {
            return jM55getValueimpl;
        }
        if (jM55getValueimpl > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (jM55getValueimpl < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return DurationKt.access$millisToNanos(jM55getValueimpl);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m49getInWholeSecondsimpl(long j) {
        return m74toLongimpl(j, DurationUnit.SECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m50getMinutesComponentimpl(long j) {
        if (m60isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m47getInWholeMinutesimpl(j) % ((long) 60));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m51getNanosecondsComponentimpl(long j) {
        if (m60isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m58isInMillisimpl(j) ? DurationKt.access$millisToNanos(m55getValueimpl(j) % ((long) 1000)) : m55getValueimpl(j) % ((long) 1000000000));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m52getSecondsComponentimpl(long j) {
        if (m60isInfiniteimpl(j)) {
            return 0;
        }
        return (int) (m49getInWholeSecondsimpl(j) % ((long) 60));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getStorageUnit-impl, reason: not valid java name */
    private static final DurationUnit m53getStorageUnitimpl(long j) {
        return m59isInNanosimpl(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getUnitDiscriminator-impl, reason: not valid java name */
    private static final int m54getUnitDiscriminatorimpl(long j) {
        return ((int) j) & 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getValue-impl, reason: not valid java name */
    private static final long m55getValueimpl(long j) {
        return j >> 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m56hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m57isFiniteimpl(long j) {
        return !m60isInfiniteimpl(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isInMillis-impl, reason: not valid java name */
    private static final boolean m58isInMillisimpl(long j) {
        return (((int) j) & 1) == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isInNanos-impl, reason: not valid java name */
    private static final boolean m59isInNanosimpl(long j) {
        return (((int) j) & 1) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m60isInfiniteimpl(long j) {
        return j == INFINITE || j == NEG_INFINITE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m61isNegativeimpl(long j) {
        return j < 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m62isPositiveimpl(long j) {
        return j > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public static final long m63minusLRDsOJo(long j, long j2) {
        return m64plusLRDsOJo(j, m79unaryMinusUwyO8pc(j2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m64plusLRDsOJo(long j, long j2) {
        if (m60isInfiniteimpl(j)) {
            if (m57isFiniteimpl(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            i.k("Summing infinite durations of different signs yields an undefined result.");
            return 0L;
        }
        if (m60isInfiniteimpl(j2)) {
            return j2;
        }
        if ((((int) j) & 1) != (((int) j2) & 1)) {
            return m58isInMillisimpl(j) ? m31addValuesMixedRangesUwyO8pc(j, m55getValueimpl(j), m55getValueimpl(j2)) : m31addValuesMixedRangesUwyO8pc(j, m55getValueimpl(j2), m55getValueimpl(j));
        }
        long jM55getValueimpl = m55getValueimpl(j) + m55getValueimpl(j2);
        return m59isInNanosimpl(j) ? DurationKt.access$durationOfNanosNormalized(jM55getValueimpl) : DurationKt.access$durationOfMillisNormalized(jM55getValueimpl);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m66timesUwyO8pc(long j, int i) {
        if (m60isInfiniteimpl(j)) {
            if (i != 0) {
                return i > 0 ? j : m79unaryMinusUwyO8pc(j);
            }
            i.k("Multiplying infinite duration by zero yields an undefined result.");
            return 0L;
        }
        if (i == 0) {
            return ZERO;
        }
        long jM55getValueimpl = m55getValueimpl(j);
        long j2 = i;
        long j3 = jM55getValueimpl * j2;
        if (!m59isInNanosimpl(j)) {
            if (j3 / j2 == jM55getValueimpl) {
                return DurationKt.access$durationOfMillis(RangesKt.c(j3, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            }
            return MathKt.getSign(i) * MathKt.getSign(jM55getValueimpl) > 0 ? INFINITE : NEG_INFINITE;
        }
        if (-2147483647L <= jM55getValueimpl && jM55getValueimpl < 2147483648L) {
            return DurationKt.access$durationOfNanos(j3);
        }
        if (j3 / j2 == jM55getValueimpl) {
            return DurationKt.access$durationOfNanosNormalized(j3);
        }
        long jAccess$nanosToMillis = DurationKt.access$nanosToMillis(jM55getValueimpl);
        long j4 = jAccess$nanosToMillis * j2;
        long jAccess$nanosToMillis2 = DurationKt.access$nanosToMillis((jM55getValueimpl - DurationKt.access$millisToNanos(jAccess$nanosToMillis)) * j2) + j4;
        if (j4 / j2 != jAccess$nanosToMillis || (jAccess$nanosToMillis2 ^ j4) < 0) {
            return MathKt.getSign(i) * MathKt.getSign(jM55getValueimpl) > 0 ? INFINITE : NEG_INFINITE;
        }
        return DurationKt.access$durationOfMillis(RangesKt.c(jAccess$nanosToMillis2, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m70toComponentsimpl(long j, Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> function5) {
        function5.getClass();
        return (T) function5.invoke(Long.valueOf(m43getInWholeDaysimpl(j)), Integer.valueOf(m42getHoursComponentimpl(j)), Integer.valueOf(m50getMinutesComponentimpl(j)), Integer.valueOf(m52getSecondsComponentimpl(j)), Integer.valueOf(m51getNanosecondsComponentimpl(j)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    public static final double m71toDoubleimpl(long j, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (j == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m55getValueimpl(j), m53getStorageUnitimpl(j), durationUnit);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    public static final int m72toIntimpl(long j, DurationUnit durationUnit) {
        durationUnit.getClass();
        return (int) RangesKt.coerceIn(m74toLongimpl(j, durationUnit), -2147483648L, 2147483647L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m73toIsoStringimpl(long j) {
        StringBuilder sb = new StringBuilder();
        if (m61isNegativeimpl(j)) {
            sb.append('-');
        }
        sb.append("PT");
        long jM41getAbsoluteValueUwyO8pc = m41getAbsoluteValueUwyO8pc(j);
        long jM44getInWholeHoursimpl = m44getInWholeHoursimpl(jM41getAbsoluteValueUwyO8pc);
        int iM50getMinutesComponentimpl = m50getMinutesComponentimpl(jM41getAbsoluteValueUwyO8pc);
        int iM52getSecondsComponentimpl = m52getSecondsComponentimpl(jM41getAbsoluteValueUwyO8pc);
        int iM51getNanosecondsComponentimpl = m51getNanosecondsComponentimpl(jM41getAbsoluteValueUwyO8pc);
        long j2 = m60isInfiniteimpl(j) ? 9999999999999L : jM44getInWholeHoursimpl;
        boolean z = false;
        boolean z2 = j2 != 0;
        boolean z3 = (iM52getSecondsComponentimpl == 0 && iM51getNanosecondsComponentimpl == 0) ? false : true;
        if (iM50getMinutesComponentimpl != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(j2);
            sb.append('H');
        }
        if (z) {
            sb.append(iM50getMinutesComponentimpl);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            m32appendFractionalimpl(j, sb, iM52getSecondsComponentimpl, iM51getNanosecondsComponentimpl, 9, "S", true);
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    public static final long m74toLongimpl(long j, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (j == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m55getValueimpl(j), m53getStorageUnitimpl(j), durationUnit);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m75toStringimpl(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == INFINITE) {
            return "Infinity";
        }
        if (j == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean zM61isNegativeimpl = m61isNegativeimpl(j);
        StringBuilder sb = new StringBuilder();
        if (zM61isNegativeimpl) {
            sb.append('-');
        }
        long jM41getAbsoluteValueUwyO8pc = m41getAbsoluteValueUwyO8pc(j);
        long jM43getInWholeDaysimpl = m43getInWholeDaysimpl(jM41getAbsoluteValueUwyO8pc);
        int iM42getHoursComponentimpl = m42getHoursComponentimpl(jM41getAbsoluteValueUwyO8pc);
        int iM50getMinutesComponentimpl = m50getMinutesComponentimpl(jM41getAbsoluteValueUwyO8pc);
        int iM52getSecondsComponentimpl = m52getSecondsComponentimpl(jM41getAbsoluteValueUwyO8pc);
        int iM51getNanosecondsComponentimpl = m51getNanosecondsComponentimpl(jM41getAbsoluteValueUwyO8pc);
        int i = 0;
        boolean z = jM43getInWholeDaysimpl != 0;
        boolean z2 = iM42getHoursComponentimpl != 0;
        boolean z3 = iM50getMinutesComponentimpl != 0;
        boolean z4 = (iM52getSecondsComponentimpl == 0 && iM51getNanosecondsComponentimpl == 0) ? false : true;
        if (z) {
            sb.append(jM43getInWholeDaysimpl);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM42getHoursComponentimpl);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iM50getMinutesComponentimpl);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iM52getSecondsComponentimpl != 0 || z || z2 || z3) {
                m32appendFractionalimpl(j, sb, iM52getSecondsComponentimpl, iM51getNanosecondsComponentimpl, 9, "s", false);
            } else if (iM51getNanosecondsComponentimpl >= 1000000) {
                m32appendFractionalimpl(j, sb, iM51getNanosecondsComponentimpl / DurationKt.NANOS_IN_MILLIS, iM51getNanosecondsComponentimpl % DurationKt.NANOS_IN_MILLIS, 6, "ms", false);
            } else if (iM51getNanosecondsComponentimpl >= 1000) {
                m32appendFractionalimpl(j, sb, iM51getNanosecondsComponentimpl / 1000, iM51getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(iM51getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i = i4;
        }
        if (zM61isNegativeimpl && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: toString-impl$default, reason: not valid java name */
    public static /* synthetic */ String m77toStringimpl$default(long j, DurationUnit durationUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m76toStringimpl(j, durationUnit, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: truncateTo-UwyO8pc$kotlin_stdlib, reason: not valid java name */
    public static final long m78truncateToUwyO8pc$kotlin_stdlib(long j, DurationUnit durationUnit) {
        durationUnit.getClass();
        DurationUnit durationUnitM53getStorageUnitimpl = m53getStorageUnitimpl(j);
        if (durationUnit.compareTo(durationUnitM53getStorageUnitimpl) <= 0 || m60isInfiniteimpl(j)) {
            return j;
        }
        return DurationKt.toDuration(m55getValueimpl(j) - (m55getValueimpl(j) % DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(1L, durationUnit, durationUnitM53getStorageUnitimpl)), durationUnitM53getStorageUnitimpl);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m79unaryMinusUwyO8pc(long j) {
        return DurationKt.access$durationOf(-m55getValueimpl(j), ((int) j) & 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m80compareToLRDsOJo(duration.getRawValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object other) {
        return m39equalsimpl(this.rawValue, other);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return m56hashCodeimpl(this.rawValue);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return m75toStringimpl(this.rawValue);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getRawValue() {
        return this.rawValue;
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m80compareToLRDsOJo(long j) {
        return m34compareToLRDsOJo(this.rawValue, j);
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m69toComponentsimpl(long j, Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> function4) {
        function4.getClass();
        return (T) function4.invoke(Long.valueOf(m44getInWholeHoursimpl(j)), Integer.valueOf(m50getMinutesComponentimpl(j)), Integer.valueOf(m52getSecondsComponentimpl(j)), Integer.valueOf(m51getNanosecondsComponentimpl(j)));
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m68toComponentsimpl(long j, Function3<? super Long, ? super Integer, ? super Integer, ? extends T> function3) {
        function3.getClass();
        return (T) function3.invoke(Long.valueOf(m47getInWholeMinutesimpl(j)), Integer.valueOf(m52getSecondsComponentimpl(j)), Integer.valueOf(m51getNanosecondsComponentimpl(j)));
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m67toComponentsimpl(long j, Function2<? super Long, ? super Integer, ? extends T> function2) {
        function2.getClass();
        return (T) function2.invoke(Long.valueOf(m49getInWholeSecondsimpl(j)), Integer.valueOf(m51getNanosecondsComponentimpl(j)));
    }

    @PublishedApi
    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* JADX INFO: renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m37divUwyO8pc(long j, double d) {
        int iRoundToInt = MathKt.roundToInt(d);
        if (iRoundToInt == d && iRoundToInt != 0) {
            return m38divUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitM53getStorageUnitimpl = m53getStorageUnitimpl(j);
        return DurationKt.toDuration(m71toDoubleimpl(j, durationUnitM53getStorageUnitimpl) / d, durationUnitM53getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m65timesUwyO8pc(long j, double d) {
        int iRoundToInt = MathKt.roundToInt(d);
        if (iRoundToInt == d) {
            return m66timesUwyO8pc(j, iRoundToInt);
        }
        DurationUnit durationUnitM53getStorageUnitimpl = m53getStorageUnitimpl(j);
        return DurationKt.toDuration(m71toDoubleimpl(j, durationUnitM53getStorageUnitimpl) * d, durationUnitM53getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static final String m76toStringimpl(long j, DurationUnit durationUnit, int i) {
        durationUnit.getClass();
        if (i >= 0) {
            double dM71toDoubleimpl = m71toDoubleimpl(j, durationUnit);
            if (Double.isInfinite(dM71toDoubleimpl)) {
                return String.valueOf(dM71toDoubleimpl);
            }
            return DurationJvmKt.formatToExactDecimals(dM71toDoubleimpl, RangesKt.coerceAtMost(i, 12)) + DurationUnitKt__DurationUnitKt.shortName(durationUnit);
        }
        l9.i.d(ai.onnxruntime.a.e(i, "decimals must be not negative, but was "));
        return null;
    }
}
