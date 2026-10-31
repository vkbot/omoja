package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002¨\u0006\u0004¸\u0006\u0000"}, d2 = {"kotlin/sequences/SequencesKt__SequencesKt$Sequence$1", "Lkotlin/sequences/Sequence;", "iterator", "", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 SlidingWindow.kt\nkotlin/collections/SlidingWindowKt\n*L\n1#1,731:1\n19#2:732\n*E\n"})
public final class SlidingWindowKt$windowedSequence$$inlined$Sequence$1<T> implements Sequence<List<? extends T>> {
    final /* synthetic */ boolean $partialWindows$inlined;
    final /* synthetic */ boolean $reuseBuffer$inlined;
    final /* synthetic */ int $size$inlined;
    final /* synthetic */ int $step$inlined;
    final /* synthetic */ Sequence $this_windowedSequence$inlined;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SlidingWindowKt$windowedSequence$$inlined$Sequence$1(Sequence sequence, int i9, int i10, boolean z8, boolean z9) {
        this.$this_windowedSequence$inlined = sequence;
        this.$size$inlined = i9;
        this.$step$inlined = i10;
        this.$partialWindows$inlined = z8;
        this.$reuseBuffer$inlined = z9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.sequences.Sequence
    public Iterator<List<? extends T>> iterator() {
        return SlidingWindowKt.windowedIterator(this.$this_windowedSequence$inlined.iterator(), this.$size$inlined, this.$step$inlined, this.$partialWindows$inlined, this.$reuseBuffer$inlined);
    }
}
