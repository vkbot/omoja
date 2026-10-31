package kotlin.text;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u0002H\u0096\u0002J\t\u0010\u001a\u001a\u00020\u001bH\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\b¨\u0006\u001c"}, d2 = {"kotlin/text/DelimitedRangesSequence$iterator$1", HttpUrl.FRAGMENT_ENCODE_SET, "Lkotlin/ranges/IntRange;", "nextState", HttpUrl.FRAGMENT_ENCODE_SET, "getNextState", "()I", "setNextState", "(I)V", "currentStartIndex", "getCurrentStartIndex", "setCurrentStartIndex", "nextSearchIndex", "getNextSearchIndex", "setNextSearchIndex", "nextItem", "getNextItem", "()Lkotlin/ranges/IntRange;", "setNextItem", "(Lkotlin/ranges/IntRange;)V", "counter", "getCounter", "setCounter", "calcNext", HttpUrl.FRAGMENT_ENCODE_SET, "next", "hasNext", HttpUrl.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DelimitedRangesSequence$iterator$1 implements Iterator<IntRange>, KMappedMarker {
    private int counter;
    private int currentStartIndex;
    private IntRange nextItem;
    private int nextSearchIndex;
    private int nextState = -1;
    final /* synthetic */ DelimitedRangesSequence this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DelimitedRangesSequence$iterator$1(DelimitedRangesSequence delimitedRangesSequence) {
        this.this$0 = delimitedRangesSequence;
        int iB = RangesKt.b(DelimitedRangesSequence.access$getStartIndex$p(delimitedRangesSequence), DelimitedRangesSequence.access$getInput$p(delimitedRangesSequence).length());
        this.currentStartIndex = iB;
        this.nextSearchIndex = iB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    /* JADX WARN: Code duplicated, block: B:12:0x0030 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:18:0x0097  */
    private final void calcNext() {
        Pair pair;
        if (this.nextSearchIndex < 0) {
            this.nextState = 0;
            this.nextItem = null;
            return;
        }
        if (DelimitedRangesSequence.access$getLimit$p(this.this$0) > 0) {
            int i = this.counter + 1;
            this.counter = i;
            if (i >= DelimitedRangesSequence.access$getLimit$p(this.this$0)) {
                this.nextItem = new IntRange(this.currentStartIndex, StringsKt__StringsKt.getLastIndex(DelimitedRangesSequence.access$getInput$p(this.this$0)));
                this.nextSearchIndex = -1;
            } else if (this.nextSearchIndex > DelimitedRangesSequence.access$getInput$p(this.this$0).length() && (pair = (Pair) DelimitedRangesSequence.access$getGetNextMatch$p(this.this$0).invoke(DelimitedRangesSequence.access$getInput$p(this.this$0), Integer.valueOf(this.nextSearchIndex))) != null) {
                int iIntValue = ((Number) pair.component1()).intValue();
                int iIntValue2 = ((Number) pair.component2()).intValue();
                this.nextItem = RangesKt.until(this.currentStartIndex, iIntValue);
                int i2 = iIntValue + iIntValue2;
                this.currentStartIndex = i2;
                this.nextSearchIndex = i2 + (iIntValue2 == 0 ? 1 : 0);
            } else {
                this.nextItem = new IntRange(this.currentStartIndex, StringsKt__StringsKt.getLastIndex(DelimitedRangesSequence.access$getInput$p(this.this$0)));
                this.nextSearchIndex = -1;
            }
        } else if (this.nextSearchIndex > DelimitedRangesSequence.access$getInput$p(this.this$0).length()) {
            this.nextItem = new IntRange(this.currentStartIndex, StringsKt__StringsKt.getLastIndex(DelimitedRangesSequence.access$getInput$p(this.this$0)));
            this.nextSearchIndex = -1;
        } else {
            int iIntValue3 = ((Number) pair.component1()).intValue();
            int iIntValue4 = ((Number) pair.component2()).intValue();
            this.nextItem = RangesKt.until(this.currentStartIndex, iIntValue3);
            int i3 = iIntValue3 + iIntValue4;
            this.currentStartIndex = i3;
            this.nextSearchIndex = i3 + (iIntValue4 == 0 ? 1 : 0);
        }
        this.nextState = 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getCounter() {
        return this.counter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getCurrentStartIndex() {
        return this.currentStartIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final IntRange getNextItem() {
        return this.nextItem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getNextSearchIndex() {
        return this.nextSearchIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getNextState() {
        return this.nextState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.nextState == -1) {
            calcNext();
        }
        return this.nextState == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    /* JADX INFO: renamed from: next, reason: avoid collision after fix types in other method */
    public IntRange next2() {
        if (this.nextState == -1) {
            calcNext();
        }
        if (this.nextState == 0) {
            n0.b.x();
            return null;
        }
        IntRange intRange = this.nextItem;
        intRange.getClass();
        this.nextItem = null;
        this.nextState = -1;
        return intRange;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCounter(int i) {
        this.counter = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setCurrentStartIndex(int i) {
        this.currentStartIndex = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setNextItem(IntRange intRange) {
        this.nextItem = intRange;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setNextSearchIndex(int i) {
        this.nextSearchIndex = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setNextState(int i) {
        this.nextState = i;
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ IntRange next() {
        return next2();
    }
}
