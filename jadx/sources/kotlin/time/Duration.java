package kotlin.time;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.comparisons.ComparisonsKt___ComparisonsJvmKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@SinceKotlin(version = "1.6")
@Metadata(m3158d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0006\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 \u0089\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0089\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\f\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u000fJ\u0010\u0010\u0016\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u0018\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010!\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\"\u0010\u001bJ\u0018\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0002¢\u0006\u0004\b%\u0010&J\u0018\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020'H\u0086\u0002¢\u0006\u0004\b%\u0010(J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\tH\u0086\u0002¢\u0006\u0004\b*\u0010&J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010$\u001a\u00020'H\u0086\u0002¢\u0006\u0004\b*\u0010(J\u0018\u0010)\u001a\u00020'2\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013H\u0000¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\r¢\u0006\u0004\b2\u0010\u000fJ\r\u00103\u001a\u00020\r¢\u0006\u0004\b4\u0010\u000fJ\r\u00105\u001a\u00020\r¢\u0006\u0004\b6\u0010\u000fJ\r\u00107\u001a\u00020\r¢\u0006\u0004\b8\u0010\u000fJ\u0018\u0010;\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b<\u0010=J\u009d\u0001\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2u\u0010@\u001aq\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(D\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0AH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010JJ\u0088\u0001\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2`\u0010@\u001a\\\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(E\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0KH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010LJs\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?2K\u0010@\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(F\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0MH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010NJ^\u0010>\u001a\u0002H?\"\u0004\b\u0000\u0010?26\u0010@\u001a2\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(G\u0012\u0013\u0012\u00110\t¢\u0006\f\bB\u0012\b\bC\u0012\u0004\b\b(H\u0012\u0004\u0012\u0002H?0OH\u0086\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bI\u0010PJ\u0015\u0010^\u001a\u00020'2\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\b_\u0010`J\u0015\u0010a\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\bb\u00100J\u0015\u0010c\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0013¢\u0006\u0004\bd\u0010eJ\u000f\u0010t\u001a\u00020uH\u0016¢\u0006\u0004\bv\u0010wJA\u0010x\u001a\u00020y*\u00060zj\u0002`{2\u0006\u0010|\u001a\u00020\t2\u0006\u0010}\u001a\u00020\t2\u0006\u0010~\u001a\u00020\t2\u0006\u0010.\u001a\u00020u2\u0006\u0010\u007f\u001a\u00020\rH\u0002¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J!\u0010t\u001a\u00020u2\u0006\u0010.\u001a\u00020\u00132\t\b\u0002\u0010\u0082\u0001\u001a\u00020\t¢\u0006\u0005\bv\u0010\u0083\u0001J\u000f\u0010\u0084\u0001\u001a\u00020u¢\u0006\u0005\b\u0085\u0001\u0010wJ\u0015\u0010\u0086\u0001\u001a\u00020\r2\t\u0010\u0019\u001a\u0005\u0018\u00010\u0087\u0001HÖ\u0003J\n\u0010\u0088\u0001\u001a\u00020\tHÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0015\u0010\b\u001a\u00020\t8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0011\u00109\u001a\u00020\u00008F¢\u0006\u0006\u001a\u0004\b:\u0010\u0005R\u001a\u0010Q\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bR\u0010S\u001a\u0004\bT\u0010\u000bR\u001a\u0010U\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bV\u0010S\u001a\u0004\bW\u0010\u000bR\u001a\u0010X\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\bY\u0010S\u001a\u0004\bZ\u0010\u000bR\u001a\u0010[\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\\\u0010S\u001a\u0004\b]\u0010\u000bR\u0011\u0010f\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bg\u0010\u0005R\u0011\u0010h\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bi\u0010\u0005R\u0011\u0010j\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bk\u0010\u0005R\u0011\u0010l\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bm\u0010\u0005R\u0011\u0010n\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bo\u0010\u0005R\u0011\u0010p\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bq\u0010\u0005R\u0011\u0010r\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\bs\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u008a\u0001"}, m3159d2 = {"Lkotlin/time/Duration;", "", "rawValue", "", "constructor-impl", "(J)J", "value", "getValue-impl", "unitDiscriminator", "", "getUnitDiscriminator-impl", "(J)I", "isInNanos", "", "isInNanos-impl", "(J)Z", "isInMillis", "isInMillis-impl", "storageUnit", "Lkotlin/time/DurationUnit;", "getStorageUnit-impl", "(J)Lkotlin/time/DurationUnit;", "unaryMinus", "unaryMinus-UwyO8pc", "plus", "other", "plus-LRDsOJo", "(JJ)J", "addValuesMixedRanges", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "minus", "minus-LRDsOJo", "times", "scale", "times-UwyO8pc", "(JI)J", "", "(JD)J", "div", "div-UwyO8pc", "div-LRDsOJo", "(JJ)D", "truncateTo", "unit", "truncateTo-UwyO8pc$kotlin_stdlib", "(JLkotlin/time/DurationUnit;)J", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "isInfinite", "isInfinite-impl", "isFinite", "isFinite-impl", "absoluteValue", "getAbsoluteValue-UwyO8pc", "compareTo", "compareTo-LRDsOJo", "(JJ)I", "toComponents", ExifInterface.GPS_DIRECTION_TRUE, "action", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "hoursComponent", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "toDouble", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toLong", "toLong-impl", "toInt", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "inWholeDays", "getInWholeDays-impl", "inWholeHours", "getInWholeHours-impl", "inWholeMinutes", "getInWholeMinutes-impl", "inWholeSeconds", "getInWholeSeconds-impl", "inWholeMilliseconds", "getInWholeMilliseconds-impl", "inWholeMicroseconds", "getInWholeMicroseconds-impl", "inWholeNanoseconds", "getInWholeNanoseconds-impl", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "appendFractional", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "appendFractional-impl", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "toIsoString", "toIsoString-impl", "equals", "", "hashCode", "Companion", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmInline
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1062:1\n37#1:1063\n37#1:1064\n37#1:1065\n37#1:1066\n37#1:1067\n500#1:1068\n517#1:1076\n170#2,6:1069\n1#3:1075\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n38#1:1063\n39#1:1064\n274#1:1065\n294#1:1066\n478#1:1067\n727#1:1068\n818#1:1076\n769#1:1069,6\n*E\n"})
public final class Duration implements Comparable<Duration> {
    private final long rawValue;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long ZERO = m7412constructorimpl(0);
    private static final long INFINITE = DurationKt.durationOfMillis(DurationKt.MAX_MILLIS);
    private static final long NEG_INFINITE = DurationKt.durationOfMillis(-4611686018427387903L);

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J\u0015\u00100\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0004\b2\u00103J\u0015\u00104\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0004\b5\u00103J\u0015\u00106\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0002\b7J\u0015\u00108\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u000201¢\u0006\u0002\b9R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u0005X\u0080\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007R\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u001a\u001a\u0004\b\u0017\u0010\u001bR\u001f\u0010\u0013\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u001c\u001a\u0004\b\u0017\u0010\u001dR\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0016\u001a\u0004\b \u0010\u0018R\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001bR\u001f\u0010\u001e\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u001c\u001a\u0004\b \u0010\u001dR\u001f\u0010!\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u0016\u001a\u0004\b#\u0010\u0018R\u001f\u0010!\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u001a\u001a\u0004\b#\u0010\u001bR\u001f\u0010!\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\u001dR\u001f\u0010$\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u0018R\u001f\u0010$\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u001a\u001a\u0004\b&\u0010\u001bR\u001f\u0010$\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b%\u0010\u001c\u001a\u0004\b&\u0010\u001dR\u001f\u0010'\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0016\u001a\u0004\b)\u0010\u0018R\u001f\u0010'\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u001a\u001a\u0004\b)\u0010\u001bR\u001f\u0010'\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b(\u0010\u001c\u001a\u0004\b)\u0010\u001dR\u001f\u0010*\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u0016\u001a\u0004\b,\u0010\u0018R\u001f\u0010*\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u001a\u001a\u0004\b,\u0010\u001bR\u001f\u0010*\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b+\u0010\u001c\u001a\u0004\b,\u0010\u001dR\u001f\u0010-\u001a\u00020\u0005*\u00020\u00148Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u0016\u001a\u0004\b/\u0010\u0018R\u001f\u0010-\u001a\u00020\u0005*\u00020\u00198Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u001a\u001a\u0004\b/\u0010\u001bR\u001f\u0010-\u001a\u00020\u0005*\u00020\u000e8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010\u001c\u001a\u0004\b/\u0010\u001d¨\u0006:"}, m3159d2 = {"Lkotlin/time/Duration$Companion;", "", "<init>", "()V", "ZERO", "Lkotlin/time/Duration;", "getZERO-UwyO8pc", "()J", "J", "INFINITE", "getINFINITE-UwyO8pc", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "convert", "", "value", "sourceUnit", "Lkotlin/time/DurationUnit;", "targetUnit", "nanoseconds", "", "getNanoseconds-UwyO8pc$annotations", "(I)V", "getNanoseconds-UwyO8pc", "(I)J", "", "(J)V", "(J)J", "(D)V", "(D)J", "microseconds", "getMicroseconds-UwyO8pc$annotations", "getMicroseconds-UwyO8pc", "milliseconds", "getMilliseconds-UwyO8pc$annotations", "getMilliseconds-UwyO8pc", "seconds", "getSeconds-UwyO8pc$annotations", "getSeconds-UwyO8pc", "minutes", "getMinutes-UwyO8pc$annotations", "getMinutes-UwyO8pc", "hours", "getHours-UwyO8pc$annotations", "getHours-UwyO8pc", "days", "getDays-UwyO8pc$annotations", "getDays-UwyO8pc", "parse", "", "parse-UwyO8pc", "(Ljava/lang/String;)J", "parseIsoString", "parseIsoString-UwyO8pc", "parseOrNull", "parseOrNull-FghU774", "parseIsoStringOrNull", "parseIsoStringOrNull-FghU774", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
        private final long m7460getDaysUwyO8pc(int i10) {
            return DurationKt.toDuration(i10, DurationUnit.DAYS);
        }

        /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
        private final long m7466getHoursUwyO8pc(int i10) {
            return DurationKt.toDuration(i10, DurationUnit.HOURS);
        }

        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
        private final long m7472getMicrosecondsUwyO8pc(int i10) {
            return DurationKt.toDuration(i10, DurationUnit.MICROSECONDS);
        }

        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
        private final long m7478getMillisecondsUwyO8pc(int i10) {
            return DurationKt.toDuration(i10, DurationUnit.MILLISECONDS);
        }

        /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
        private final long m7484getMinutesUwyO8pc(int i10) {
            return DurationKt.toDuration(i10, DurationUnit.MINUTES);
        }

        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
        private final long m7490getNanosecondsUwyO8pc(int i10) {
            return DurationKt.toDuration(i10, DurationUnit.NANOSECONDS);
        }

        /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
        private final long m7496getSecondsUwyO8pc(int i10) {
            return DurationKt.toDuration(i10, DurationUnit.SECONDS);
        }

        @ExperimentalTime
        public final double convert(double value, DurationUnit sourceUnit, DurationUnit targetUnit) {
            sourceUnit.getClass();
            targetUnit.getClass();
            return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(value, sourceUnit, targetUnit);
        }

        /* JADX INFO: renamed from: getINFINITE-UwyO8pc, reason: not valid java name */
        public final long m7501getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* JADX INFO: renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib, reason: not valid java name */
        public final long m7502getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        /* JADX INFO: renamed from: getZERO-UwyO8pc, reason: not valid java name */
        public final long m7503getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        /* JADX INFO: renamed from: parse-UwyO8pc, reason: not valid java name */
        public final long m7504parseUwyO8pc(String value) {
            value.getClass();
            try {
                return DurationKt.parseDuration(value, false);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException(AbstractC0074a.m162m("Invalid duration string format: '", value, "'."), e);
            }
        }

        /* JADX INFO: renamed from: parseIsoString-UwyO8pc, reason: not valid java name */
        public final long m7505parseIsoStringUwyO8pc(String value) {
            value.getClass();
            try {
                return DurationKt.parseDuration(value, true);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException(AbstractC0074a.m162m("Invalid ISO duration string format: '", value, "'."), e);
            }
        }

        /* JADX INFO: renamed from: parseIsoStringOrNull-FghU774, reason: not valid java name */
        public final Duration m7506parseIsoStringOrNullFghU774(String value) {
            value.getClass();
            try {
                return Duration.m7410boximpl(DurationKt.parseDuration(value, true));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        /* JADX INFO: renamed from: parseOrNull-FghU774, reason: not valid java name */
        public final Duration m7507parseOrNullFghU774(String value) {
            value.getClass();
            try {
                return Duration.m7410boximpl(DurationKt.parseDuration(value, false));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @InlineOnly
        /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7463getDaysUwyO8pc$annotations(int i10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7469getHoursUwyO8pc$annotations(int i10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7475getMicrosecondsUwyO8pc$annotations(int i10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7481getMillisecondsUwyO8pc$annotations(int i10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7487getMinutesUwyO8pc$annotations(int i10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7493getNanosecondsUwyO8pc$annotations(int i10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7499getSecondsUwyO8pc$annotations(int i10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7464getDaysUwyO8pc$annotations(long j10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7470getHoursUwyO8pc$annotations(long j10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7476getMicrosecondsUwyO8pc$annotations(long j10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7482getMillisecondsUwyO8pc$annotations(long j10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7488getMinutesUwyO8pc$annotations(long j10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7494getNanosecondsUwyO8pc$annotations(long j10) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7500getSecondsUwyO8pc$annotations(long j10) {
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
        private final long m7461getDaysUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.DAYS);
        }

        /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
        private final long m7467getHoursUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.HOURS);
        }

        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
        private final long m7473getMicrosecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MICROSECONDS);
        }

        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
        private final long m7479getMillisecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MILLISECONDS);
        }

        /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
        private final long m7485getMinutesUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.MINUTES);
        }

        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
        private final long m7491getNanosecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.NANOSECONDS);
        }

        /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
        private final long m7497getSecondsUwyO8pc(long j10) {
            return DurationKt.toDuration(j10, DurationUnit.SECONDS);
        }

        /* JADX INFO: renamed from: getDays-UwyO8pc, reason: not valid java name */
        private final long m7459getDaysUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.DAYS);
        }

        /* JADX INFO: renamed from: getHours-UwyO8pc, reason: not valid java name */
        private final long m7465getHoursUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.HOURS);
        }

        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc, reason: not valid java name */
        private final long m7471getMicrosecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MICROSECONDS);
        }

        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc, reason: not valid java name */
        private final long m7477getMillisecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MILLISECONDS);
        }

        /* JADX INFO: renamed from: getMinutes-UwyO8pc, reason: not valid java name */
        private final long m7483getMinutesUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.MINUTES);
        }

        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc, reason: not valid java name */
        private final long m7489getNanosecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.NANOSECONDS);
        }

        /* JADX INFO: renamed from: getSeconds-UwyO8pc, reason: not valid java name */
        private final long m7495getSecondsUwyO8pc(double d) {
            return DurationKt.toDuration(d, DurationUnit.SECONDS);
        }

        @InlineOnly
        /* JADX INFO: renamed from: getDays-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7462getDaysUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getHours-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7468getHoursUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMicroseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7474getMicrosecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMilliseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7480getMillisecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getMinutes-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7486getMinutesUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getNanoseconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7492getNanosecondsUwyO8pc$annotations(double d) {
        }

        @InlineOnly
        /* JADX INFO: renamed from: getSeconds-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m7498getSecondsUwyO8pc$annotations(double d) {
        }
    }

    private /* synthetic */ Duration(long j10) {
        this.rawValue = j10;
    }

    /* JADX INFO: renamed from: addValuesMixedRanges-UwyO8pc, reason: not valid java name */
    private static final long m7408addValuesMixedRangesUwyO8pc(long j10, long j11, long j12) {
        long jNanosToMillis = DurationKt.nanosToMillis(j12);
        long j13 = j11 + jNanosToMillis;
        if (-4611686018426L > j13 || j13 >= 4611686018427L) {
            return DurationKt.durationOfMillis(RangesKt.coerceIn(j13, -4611686018427387903L, DurationKt.MAX_MILLIS));
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(j13) + (j12 - DurationKt.millisToNanos(jNanosToMillis)));
    }

    /* JADX INFO: renamed from: appendFractional-impl, reason: not valid java name */
    private static final void m7409appendFractionalimpl(long j10, StringBuilder sb, int i10, int i11, int i12, String str, boolean z9) {
        sb.append(i10);
        if (i11 != 0) {
            sb.append(FilenameUtils.EXTENSION_SEPARATOR);
            String strPadStart = StringsKt__StringsKt.padStart(String.valueOf(i11), i12, '0');
            int i13 = -1;
            int length = strPadStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (strPadStart.charAt(length) != '0') {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (z9 || i15 >= 3) {
                sb.append((CharSequence) strPadStart, 0, ((i13 + 3) / 3) * 3);
            } else {
                sb.append((CharSequence) strPadStart, 0, i15);
            }
        }
        sb.append(str);
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Duration m7410boximpl(long j10) {
        return new Duration(j10);
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m7411compareToLRDsOJo(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 < 0 || (((int) j12) & 1) == 0) {
            return Intrinsics.compare(j10, j11);
        }
        int i10 = (((int) j10) & 1) - (((int) j11) & 1);
        return m7438isNegativeimpl(j10) ? -i10 : i10;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m7412constructorimpl(long j10) {
        if (!DurationJvmKt.getDurationAssertionsEnabled()) {
            return j10;
        }
        if (m7436isInNanosimpl(j10)) {
            long jM7432getValueimpl = m7432getValueimpl(j10);
            if (-4611686018426999999L <= jM7432getValueimpl && jM7432getValueimpl < 4611686018427000000L) {
                return j10;
            }
            C1929i.m3023e(AbstractC0074a.m163n(new StringBuilder(), m7432getValueimpl(j10), " ns is out of nanoseconds range"));
            return 0L;
        }
        long jM7432getValueimpl2 = m7432getValueimpl(j10);
        if (-4611686018427387903L > jM7432getValueimpl2 || jM7432getValueimpl2 >= 4611686018427387904L) {
            C1929i.m3023e(AbstractC0074a.m163n(new StringBuilder(), m7432getValueimpl(j10), " ms is out of milliseconds range"));
            return 0L;
        }
        long jM7432getValueimpl3 = m7432getValueimpl(j10);
        if (-4611686018426L > jM7432getValueimpl3 || jM7432getValueimpl3 >= 4611686018427L) {
            return j10;
        }
        C1929i.m3023e(AbstractC0074a.m163n(new StringBuilder(), m7432getValueimpl(j10), " ms is denormalized"));
        return 0L;
    }

    /* JADX INFO: renamed from: div-LRDsOJo, reason: not valid java name */
    public static final double m7413divLRDsOJo(long j10, long j11) {
        DurationUnit durationUnit = (DurationUnit) ComparisonsKt___ComparisonsJvmKt.maxOf(m7430getStorageUnitimpl(j10), m7430getStorageUnitimpl(j11));
        return m7448toDoubleimpl(j10, durationUnit) / m7448toDoubleimpl(j11, durationUnit);
    }

    /* JADX INFO: renamed from: div-UwyO8pc, reason: not valid java name */
    public static final long m7415divUwyO8pc(long j10, int i10) {
        if (i10 == 0) {
            if (m7439isPositiveimpl(j10)) {
                return INFINITE;
            }
            if (m7438isNegativeimpl(j10)) {
                return NEG_INFINITE;
            }
            C1929i.m3029k("Dividing zero duration by zero yields an undefined result.");
            return 0L;
        }
        if (m7436isInNanosimpl(j10)) {
            return DurationKt.durationOfNanos(m7432getValueimpl(j10) / ((long) i10));
        }
        if (m7437isInfiniteimpl(j10)) {
            return m7443timesUwyO8pc(j10, MathKt.getSign(i10));
        }
        long j11 = i10;
        long jM7432getValueimpl = m7432getValueimpl(j10) / j11;
        if (-4611686018426L > jM7432getValueimpl || jM7432getValueimpl >= 4611686018427L) {
            return DurationKt.durationOfMillis(jM7432getValueimpl);
        }
        return DurationKt.durationOfNanos(DurationKt.millisToNanos(jM7432getValueimpl) + (DurationKt.millisToNanos(m7432getValueimpl(j10) - (jM7432getValueimpl * j11)) / j11));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7416equalsimpl(long j10, Object obj) {
        return (obj instanceof Duration) && j10 == ((Duration) obj).getRawValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7417equalsimpl0(long j10, long j11) {
        return j10 == j11;
    }

    /* JADX INFO: renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m7418getAbsoluteValueUwyO8pc(long j10) {
        return m7438isNegativeimpl(j10) ? m7456unaryMinusUwyO8pc(j10) : j10;
    }

    /* JADX INFO: renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m7419getHoursComponentimpl(long j10) {
        if (m7437isInfiniteimpl(j10)) {
            return 0;
        }
        return (int) (m7421getInWholeHoursimpl(j10) % ((long) 24));
    }

    /* JADX INFO: renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m7420getInWholeDaysimpl(long j10) {
        return m7451toLongimpl(j10, DurationUnit.DAYS);
    }

    /* JADX INFO: renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m7421getInWholeHoursimpl(long j10) {
        return m7451toLongimpl(j10, DurationUnit.HOURS);
    }

    /* JADX INFO: renamed from: getInWholeMicroseconds-impl, reason: not valid java name */
    public static final long m7422getInWholeMicrosecondsimpl(long j10) {
        return m7451toLongimpl(j10, DurationUnit.MICROSECONDS);
    }

    /* JADX INFO: renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m7423getInWholeMillisecondsimpl(long j10) {
        return (m7435isInMillisimpl(j10) && m7434isFiniteimpl(j10)) ? m7432getValueimpl(j10) : m7451toLongimpl(j10, DurationUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m7424getInWholeMinutesimpl(long j10) {
        return m7451toLongimpl(j10, DurationUnit.MINUTES);
    }

    /* JADX INFO: renamed from: getInWholeNanoseconds-impl, reason: not valid java name */
    public static final long m7425getInWholeNanosecondsimpl(long j10) {
        long jM7432getValueimpl = m7432getValueimpl(j10);
        if (m7436isInNanosimpl(j10)) {
            return jM7432getValueimpl;
        }
        if (jM7432getValueimpl > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (jM7432getValueimpl < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return DurationKt.millisToNanos(jM7432getValueimpl);
    }

    /* JADX INFO: renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m7426getInWholeSecondsimpl(long j10) {
        return m7451toLongimpl(j10, DurationUnit.SECONDS);
    }

    /* JADX INFO: renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m7427getMinutesComponentimpl(long j10) {
        if (m7437isInfiniteimpl(j10)) {
            return 0;
        }
        return (int) (m7424getInWholeMinutesimpl(j10) % ((long) 60));
    }

    /* JADX INFO: renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m7428getNanosecondsComponentimpl(long j10) {
        if (m7437isInfiniteimpl(j10)) {
            return 0;
        }
        return (int) (m7435isInMillisimpl(j10) ? DurationKt.millisToNanos(m7432getValueimpl(j10) % ((long) 1000)) : m7432getValueimpl(j10) % ((long) 1000000000));
    }

    /* JADX INFO: renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m7429getSecondsComponentimpl(long j10) {
        if (m7437isInfiniteimpl(j10)) {
            return 0;
        }
        return (int) (m7426getInWholeSecondsimpl(j10) % ((long) 60));
    }

    /* JADX INFO: renamed from: getStorageUnit-impl, reason: not valid java name */
    private static final DurationUnit m7430getStorageUnitimpl(long j10) {
        return m7436isInNanosimpl(j10) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* JADX INFO: renamed from: getUnitDiscriminator-impl, reason: not valid java name */
    private static final int m7431getUnitDiscriminatorimpl(long j10) {
        return ((int) j10) & 1;
    }

    /* JADX INFO: renamed from: getValue-impl, reason: not valid java name */
    private static final long m7432getValueimpl(long j10) {
        return j10 >> 1;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7433hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* JADX INFO: renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m7434isFiniteimpl(long j10) {
        return !m7437isInfiniteimpl(j10);
    }

    /* JADX INFO: renamed from: isInMillis-impl, reason: not valid java name */
    private static final boolean m7435isInMillisimpl(long j10) {
        return (((int) j10) & 1) == 1;
    }

    /* JADX INFO: renamed from: isInNanos-impl, reason: not valid java name */
    private static final boolean m7436isInNanosimpl(long j10) {
        return (((int) j10) & 1) == 0;
    }

    /* JADX INFO: renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m7437isInfiniteimpl(long j10) {
        return j10 == INFINITE || j10 == NEG_INFINITE;
    }

    /* JADX INFO: renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m7438isNegativeimpl(long j10) {
        return j10 < 0;
    }

    /* JADX INFO: renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m7439isPositiveimpl(long j10) {
        return j10 > 0;
    }

    /* JADX INFO: renamed from: minus-LRDsOJo, reason: not valid java name */
    public static final long m7440minusLRDsOJo(long j10, long j11) {
        return m7441plusLRDsOJo(j10, m7456unaryMinusUwyO8pc(j11));
    }

    /* JADX INFO: renamed from: plus-LRDsOJo, reason: not valid java name */
    public static final long m7441plusLRDsOJo(long j10, long j11) {
        if (m7437isInfiniteimpl(j10)) {
            if (m7434isFiniteimpl(j11) || (j11 ^ j10) >= 0) {
                return j10;
            }
            C1929i.m3029k("Summing infinite durations of different signs yields an undefined result.");
            return 0L;
        }
        if (m7437isInfiniteimpl(j11)) {
            return j11;
        }
        if ((((int) j10) & 1) != (((int) j11) & 1)) {
            return m7435isInMillisimpl(j10) ? m7408addValuesMixedRangesUwyO8pc(j10, m7432getValueimpl(j10), m7432getValueimpl(j11)) : m7408addValuesMixedRangesUwyO8pc(j10, m7432getValueimpl(j11), m7432getValueimpl(j10));
        }
        long jM7432getValueimpl = m7432getValueimpl(j10) + m7432getValueimpl(j11);
        return m7436isInNanosimpl(j10) ? DurationKt.durationOfNanosNormalized(jM7432getValueimpl) : DurationKt.durationOfMillisNormalized(jM7432getValueimpl);
    }

    /* JADX INFO: renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m7443timesUwyO8pc(long j10, int i10) {
        if (m7437isInfiniteimpl(j10)) {
            if (i10 != 0) {
                return i10 > 0 ? j10 : m7456unaryMinusUwyO8pc(j10);
            }
            C1929i.m3029k("Multiplying infinite duration by zero yields an undefined result.");
            return 0L;
        }
        if (i10 == 0) {
            return ZERO;
        }
        long jM7432getValueimpl = m7432getValueimpl(j10);
        long j11 = i10;
        long j12 = jM7432getValueimpl * j11;
        if (!m7436isInNanosimpl(j10)) {
            if (j12 / j11 == jM7432getValueimpl) {
                return DurationKt.durationOfMillis(RangesKt___RangesKt.coerceIn(j12, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
            }
            return MathKt.getSign(i10) * MathKt.getSign(jM7432getValueimpl) > 0 ? INFINITE : NEG_INFINITE;
        }
        if (-2147483647L <= jM7432getValueimpl && jM7432getValueimpl < 2147483648L) {
            return DurationKt.durationOfNanos(j12);
        }
        if (j12 / j11 == jM7432getValueimpl) {
            return DurationKt.durationOfNanosNormalized(j12);
        }
        long jNanosToMillis = DurationKt.nanosToMillis(jM7432getValueimpl);
        long j13 = jNanosToMillis * j11;
        long jNanosToMillis2 = DurationKt.nanosToMillis((jM7432getValueimpl - DurationKt.millisToNanos(jNanosToMillis)) * j11) + j13;
        if (j13 / j11 != jNanosToMillis || (jNanosToMillis2 ^ j13) < 0) {
            return MathKt.getSign(i10) * MathKt.getSign(jM7432getValueimpl) > 0 ? INFINITE : NEG_INFINITE;
        }
        return DurationKt.durationOfMillis(RangesKt___RangesKt.coerceIn(jNanosToMillis2, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS)));
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m7447toComponentsimpl(long j10, Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> function5) {
        function5.getClass();
        return function5.invoke(Long.valueOf(m7420getInWholeDaysimpl(j10)), Integer.valueOf(m7419getHoursComponentimpl(j10)), Integer.valueOf(m7427getMinutesComponentimpl(j10)), Integer.valueOf(m7429getSecondsComponentimpl(j10)), Integer.valueOf(m7428getNanosecondsComponentimpl(j10)));
    }

    /* JADX INFO: renamed from: toDouble-impl, reason: not valid java name */
    public static final double m7448toDoubleimpl(long j10, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (j10 == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j10 == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m7432getValueimpl(j10), m7430getStorageUnitimpl(j10), durationUnit);
    }

    /* JADX INFO: renamed from: toInt-impl, reason: not valid java name */
    public static final int m7449toIntimpl(long j10, DurationUnit durationUnit) {
        durationUnit.getClass();
        return (int) RangesKt.coerceIn(m7451toLongimpl(j10, durationUnit), -2147483648L, 2147483647L);
    }

    /* JADX INFO: renamed from: toIsoString-impl, reason: not valid java name */
    public static final String m7450toIsoStringimpl(long j10) {
        StringBuilder sb = new StringBuilder();
        if (m7438isNegativeimpl(j10)) {
            sb.append('-');
        }
        sb.append("PT");
        long jM7418getAbsoluteValueUwyO8pc = m7418getAbsoluteValueUwyO8pc(j10);
        long jM7421getInWholeHoursimpl = m7421getInWholeHoursimpl(jM7418getAbsoluteValueUwyO8pc);
        int iM7427getMinutesComponentimpl = m7427getMinutesComponentimpl(jM7418getAbsoluteValueUwyO8pc);
        int iM7429getSecondsComponentimpl = m7429getSecondsComponentimpl(jM7418getAbsoluteValueUwyO8pc);
        int iM7428getNanosecondsComponentimpl = m7428getNanosecondsComponentimpl(jM7418getAbsoluteValueUwyO8pc);
        long j11 = m7437isInfiniteimpl(j10) ? 9999999999999L : jM7421getInWholeHoursimpl;
        boolean z9 = false;
        boolean z10 = j11 != 0;
        boolean z11 = (iM7429getSecondsComponentimpl == 0 && iM7428getNanosecondsComponentimpl == 0) ? false : true;
        if (iM7427getMinutesComponentimpl != 0 || (z11 && z10)) {
            z9 = true;
        }
        if (z10) {
            sb.append(j11);
            sb.append('H');
        }
        if (z9) {
            sb.append(iM7427getMinutesComponentimpl);
            sb.append('M');
        }
        if (z11 || (!z10 && !z9)) {
            m7409appendFractionalimpl(j10, sb, iM7429getSecondsComponentimpl, iM7428getNanosecondsComponentimpl, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: toLong-impl, reason: not valid java name */
    public static final long m7451toLongimpl(long j10, DurationUnit durationUnit) {
        durationUnit.getClass();
        if (j10 == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j10 == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m7432getValueimpl(j10), m7430getStorageUnitimpl(j10), durationUnit);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7452toStringimpl(long j10) {
        if (j10 == 0) {
            return "0s";
        }
        if (j10 == INFINITE) {
            return "Infinity";
        }
        if (j10 == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean zM7438isNegativeimpl = m7438isNegativeimpl(j10);
        StringBuilder sb = new StringBuilder();
        if (zM7438isNegativeimpl) {
            sb.append('-');
        }
        long jM7418getAbsoluteValueUwyO8pc = m7418getAbsoluteValueUwyO8pc(j10);
        long jM7420getInWholeDaysimpl = m7420getInWholeDaysimpl(jM7418getAbsoluteValueUwyO8pc);
        int iM7419getHoursComponentimpl = m7419getHoursComponentimpl(jM7418getAbsoluteValueUwyO8pc);
        int iM7427getMinutesComponentimpl = m7427getMinutesComponentimpl(jM7418getAbsoluteValueUwyO8pc);
        int iM7429getSecondsComponentimpl = m7429getSecondsComponentimpl(jM7418getAbsoluteValueUwyO8pc);
        int iM7428getNanosecondsComponentimpl = m7428getNanosecondsComponentimpl(jM7418getAbsoluteValueUwyO8pc);
        int i10 = 0;
        boolean z9 = jM7420getInWholeDaysimpl != 0;
        boolean z10 = iM7419getHoursComponentimpl != 0;
        boolean z11 = iM7427getMinutesComponentimpl != 0;
        boolean z12 = (iM7429getSecondsComponentimpl == 0 && iM7428getNanosecondsComponentimpl == 0) ? false : true;
        if (z9) {
            sb.append(jM7420getInWholeDaysimpl);
            sb.append('d');
            i10 = 1;
        }
        if (z10 || (z9 && (z11 || z12))) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            sb.append(iM7419getHoursComponentimpl);
            sb.append('h');
            i10 = i11;
        }
        if (z11 || (z12 && (z10 || z9))) {
            int i12 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            sb.append(iM7427getMinutesComponentimpl);
            sb.append('m');
            i10 = i12;
        }
        if (z12) {
            int i13 = i10 + 1;
            if (i10 > 0) {
                sb.append(' ');
            }
            if (iM7429getSecondsComponentimpl != 0 || z9 || z10 || z11) {
                m7409appendFractionalimpl(j10, sb, iM7429getSecondsComponentimpl, iM7428getNanosecondsComponentimpl, 9, "s", false);
            } else if (iM7428getNanosecondsComponentimpl >= 1000000) {
                m7409appendFractionalimpl(j10, sb, iM7428getNanosecondsComponentimpl / DurationKt.NANOS_IN_MILLIS, iM7428getNanosecondsComponentimpl % DurationKt.NANOS_IN_MILLIS, 6, "ms", false);
            } else if (iM7428getNanosecondsComponentimpl >= 1000) {
                m7409appendFractionalimpl(j10, sb, iM7428getNanosecondsComponentimpl / 1000, iM7428getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(iM7428getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i10 = i13;
        }
        if (zM7438isNegativeimpl && i10 > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: toString-impl$default, reason: not valid java name */
    public static /* synthetic */ String m7454toStringimpl$default(long j10, DurationUnit durationUnit, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return m7453toStringimpl(j10, durationUnit, i10);
    }

    /* JADX INFO: renamed from: truncateTo-UwyO8pc$kotlin_stdlib, reason: not valid java name */
    public static final long m7455truncateToUwyO8pc$kotlin_stdlib(long j10, DurationUnit durationUnit) {
        durationUnit.getClass();
        DurationUnit durationUnitM7430getStorageUnitimpl = m7430getStorageUnitimpl(j10);
        if (durationUnit.compareTo(durationUnitM7430getStorageUnitimpl) <= 0 || m7437isInfiniteimpl(j10)) {
            return j10;
        }
        return DurationKt.toDuration(m7432getValueimpl(j10) - (m7432getValueimpl(j10) % DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(1L, durationUnit, durationUnitM7430getStorageUnitimpl)), durationUnitM7430getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m7456unaryMinusUwyO8pc(long j10) {
        return DurationKt.durationOf(-m7432getValueimpl(j10), ((int) j10) & 1);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m7457compareToLRDsOJo(duration.getRawValue());
    }

    public boolean equals(Object other) {
        return m7416equalsimpl(this.rawValue, other);
    }

    public int hashCode() {
        return m7433hashCodeimpl(this.rawValue);
    }

    public String toString() {
        return m7452toStringimpl(this.rawValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getRawValue() {
        return this.rawValue;
    }

    /* JADX INFO: renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m7457compareToLRDsOJo(long j10) {
        return m7411compareToLRDsOJo(this.rawValue, j10);
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m7446toComponentsimpl(long j10, Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> function4) {
        function4.getClass();
        return function4.invoke(Long.valueOf(m7421getInWholeHoursimpl(j10)), Integer.valueOf(m7427getMinutesComponentimpl(j10)), Integer.valueOf(m7429getSecondsComponentimpl(j10)), Integer.valueOf(m7428getNanosecondsComponentimpl(j10)));
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m7445toComponentsimpl(long j10, Function3<? super Long, ? super Integer, ? super Integer, ? extends T> function3) {
        function3.getClass();
        return function3.invoke(Long.valueOf(m7424getInWholeMinutesimpl(j10)), Integer.valueOf(m7429getSecondsComponentimpl(j10)), Integer.valueOf(m7428getNanosecondsComponentimpl(j10)));
    }

    /* JADX INFO: renamed from: toComponents-impl, reason: not valid java name */
    public static final <T> T m7444toComponentsimpl(long j10, Function2<? super Long, ? super Integer, ? extends T> function2) {
        function2.getClass();
        return function2.invoke(Long.valueOf(m7426getInWholeSecondsimpl(j10)), Integer.valueOf(m7428getNanosecondsComponentimpl(j10)));
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
    public static final long m7414divUwyO8pc(long j10, double d) {
        int iRoundToInt = MathKt.roundToInt(d);
        if (iRoundToInt == d && iRoundToInt != 0) {
            return m7415divUwyO8pc(j10, iRoundToInt);
        }
        DurationUnit durationUnitM7430getStorageUnitimpl = m7430getStorageUnitimpl(j10);
        return DurationKt.toDuration(m7448toDoubleimpl(j10, durationUnitM7430getStorageUnitimpl) / d, durationUnitM7430getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: times-UwyO8pc, reason: not valid java name */
    public static final long m7442timesUwyO8pc(long j10, double d) {
        int iRoundToInt = MathKt.roundToInt(d);
        if (iRoundToInt == d) {
            return m7443timesUwyO8pc(j10, iRoundToInt);
        }
        DurationUnit durationUnitM7430getStorageUnitimpl = m7430getStorageUnitimpl(j10);
        return DurationKt.toDuration(m7448toDoubleimpl(j10, durationUnitM7430getStorageUnitimpl) * d, durationUnitM7430getStorageUnitimpl);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static final String m7453toStringimpl(long j10, DurationUnit durationUnit, int i10) {
        durationUnit.getClass();
        if (i10 >= 0) {
            double dM7448toDoubleimpl = m7448toDoubleimpl(j10, durationUnit);
            if (Double.isInfinite(dM7448toDoubleimpl)) {
                return String.valueOf(dM7448toDoubleimpl);
            }
            return DurationJvmKt.formatToExactDecimals(dM7448toDoubleimpl, RangesKt.coerceAtMost(i10, 12)) + DurationUnitKt__DurationUnitKt.shortName(durationUnit);
        }
        C2237i.m3597d(AbstractC0074a.m154e(i10, "decimals must be not negative, but was "));
        return null;
    }
}
