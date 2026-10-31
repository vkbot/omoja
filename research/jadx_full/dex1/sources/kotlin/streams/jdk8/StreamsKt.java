package kotlin.streams.jdk8;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.sequences.Sequence;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0005H\u0007\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u0007H\u0007\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\b0\u0001*\u00020\tH\u0007\u001a\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001a\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00020\f\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\f*\u00020\u0005H\u0007\u001a\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\f*\u00020\u0007H\u0007\u001a\u0012\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\f*\u00020\tH\u0007¨\u0006\r"}, d2 = {"asSequence", "Lkotlin/sequences/Sequence;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/stream/Stream;", "", "Ljava/util/stream/IntStream;", "", "Ljava/util/stream/LongStream;", "", "Ljava/util/stream/DoubleStream;", "asStream", "toList", "", "kotlin-stdlib-jdk8"}, k = 2, mv = {2, 2, 0}, pn = "kotlin.streams", xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@JvmName(name = "StreamsKt")
public final class StreamsKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Spliterator a(Sequence sequence) {
        return asStream$lambda$4(sequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.2")
    public static final <T> Sequence<T> asSequence(Stream<T> stream) {
        stream.getClass();
        return new StreamsKt$asSequence$$inlined$Sequence$1(stream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.2")
    public static final <T> Stream<T> asStream(Sequence<? extends T> sequence) {
        sequence.getClass();
        Stream<T> stream = StreamSupport.stream(new a(0, sequence), 16, false);
        stream.getClass();
        return stream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final Spliterator asStream$lambda$4(Sequence sequence) {
        return Spliterators.spliteratorUnknownSize(sequence.iterator(), 16);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "1.2")
    public static final <T> List<T> toList(Stream<T> stream) {
        stream.getClass();
        Object objCollect = stream.collect(Collectors.toList());
        objCollect.getClass();
        return (List) objCollect;
    }

    @SinceKotlin(version = "1.2")
    public static final Sequence<Integer> asSequence(IntStream intStream) {
        intStream.getClass();
        return new StreamsKt$asSequence$$inlined$Sequence$2(intStream);
    }

    @SinceKotlin(version = "1.2")
    public static final Sequence<Long> asSequence(LongStream longStream) {
        longStream.getClass();
        return new StreamsKt$asSequence$$inlined$Sequence$3(longStream);
    }

    @SinceKotlin(version = "1.2")
    public static final Sequence<Double> asSequence(DoubleStream doubleStream) {
        doubleStream.getClass();
        return new StreamsKt$asSequence$$inlined$Sequence$4(doubleStream);
    }

    @SinceKotlin(version = "1.2")
    public static final List<Integer> toList(IntStream intStream) {
        intStream.getClass();
        int[] array = intStream.toArray();
        array.getClass();
        return ArraysKt.asList(array);
    }

    @SinceKotlin(version = "1.2")
    public static final List<Long> toList(LongStream longStream) {
        longStream.getClass();
        long[] array = longStream.toArray();
        array.getClass();
        return ArraysKt.asList(array);
    }

    @SinceKotlin(version = "1.2")
    public static final List<Double> toList(DoubleStream doubleStream) {
        doubleStream.getClass();
        double[] array = doubleStream.toArray();
        array.getClass();
        return ArraysKt.asList(array);
    }
}
