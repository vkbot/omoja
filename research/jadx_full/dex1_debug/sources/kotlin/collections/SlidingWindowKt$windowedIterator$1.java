package kotlin.collections;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@DebugMetadata(c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", f = "SlidingWindow.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4}, l = {34, 40, ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX, ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE, 58}, m = "invokeSuspend", n = {"$this$iterator", "buffer", "e", "bufferInitialCapacity", "gap", "skip", "$this$iterator", "buffer", "bufferInitialCapacity", "gap", "skip", "$this$iterator", "buffer", "e", "bufferInitialCapacity", "gap", "$this$iterator", "buffer", "bufferInitialCapacity", "gap", "$this$iterator", "buffer", "bufferInitialCapacity", "gap"}, s = {"L$0", "L$1", "L$3", "I$0", "I$1", "I$2", "L$0", "L$1", "I$0", "I$1", "I$2", "L$0", "L$1", "L$3", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"})
public final class SlidingWindowKt$windowedIterator$1<T> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super List<? extends T>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Iterator<T> $iterator;
    final /* synthetic */ boolean $partialWindows;
    final /* synthetic */ boolean $reuseBuffer;
    final /* synthetic */ int $size;
    final /* synthetic */ int $step;
    int I$0;
    int I$1;
    int I$2;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.util.Iterator<? extends T> */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SlidingWindowKt$windowedIterator$1(int i9, int i10, Iterator<? extends T> it, boolean z8, boolean z9, Continuation<? super SlidingWindowKt$windowedIterator$1> continuation) {
        super(2, continuation);
        this.$size = i9;
        this.$step = i10;
        this.$iterator = it;
        this.$reuseBuffer = z8;
        this.$partialWindows = z9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SlidingWindowKt$windowedIterator$1 slidingWindowKt$windowedIterator$1 = new SlidingWindowKt$windowedIterator$1(this.$size, this.$step, this.$iterator, this.$reuseBuffer, this.$partialWindows, continuation);
        slidingWindowKt$windowedIterator$1.L$0 = obj;
        return slidingWindowKt$windowedIterator$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object invoke(SequenceScope<? super List<? extends T>> sequenceScope, Continuation<? super Unit> continuation) {
        return ((SlidingWindowKt$windowedIterator$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:85:0x0101 */
    /* JADX WARN: Code duplicated, block: B:23:0x0084  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:66:0x0159  */
    /* JADX WARN: Code duplicated, block: B:68:0x015d  */
    /* JADX WARN: Code duplicated, block: B:69:0x015f  */
    /* JADX WARN: Code duplicated, block: B:74:0x017f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0185  */
    /* JADX WARN: Code duplicated, block: B:88:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x008a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x007e A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00b0 -> B:17:0x005e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0142 -> B:60:0x0145). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0176 -> B:73:0x0179). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:21:0x007e
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            java.lang.Object r0 = r13.L$0
            kotlin.sequences.SequenceScope r0 = (kotlin.sequences.SequenceScope) r0
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r13.label
            r3 = 5
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            r8 = 0
            if (r2 == 0) goto L60
            if (r2 == r7) goto L4f
            if (r2 == r6) goto L46
            if (r2 == r5) goto L35
            if (r2 == r4) goto L28
            if (r2 != r3) goto L21
            java.lang.Object r0 = r13.L$1
            kotlin.collections.RingBuffer r0 = (kotlin.collections.RingBuffer) r0
            goto L4a
        L21:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            j1.i.l(r14)
            r14 = 0
            return r14
        L28:
            int r2 = r13.I$1
            int r5 = r13.I$0
            java.lang.Object r6 = r13.L$1
            kotlin.collections.RingBuffer r6 = (kotlin.collections.RingBuffer) r6
            kotlin.ResultKt.throwOnFailure(r14)
            goto L179
        L35:
            int r2 = r13.I$1
            int r6 = r13.I$0
            java.lang.Object r7 = r13.L$2
            java.util.Iterator r7 = (java.util.Iterator) r7
            java.lang.Object r9 = r13.L$1
            kotlin.collections.RingBuffer r9 = (kotlin.collections.RingBuffer) r9
            kotlin.ResultKt.throwOnFailure(r14)
            goto L145
        L46:
            java.lang.Object r0 = r13.L$1
            java.util.ArrayList r0 = (java.util.ArrayList) r0
        L4a:
            kotlin.ResultKt.throwOnFailure(r14)
            goto L1a2
        L4f:
            int r2 = r13.I$1
            int r3 = r13.I$0
            java.lang.Object r4 = r13.L$2
            java.util.Iterator r4 = (java.util.Iterator) r4
            java.lang.Object r5 = r13.L$1
            java.util.ArrayList r5 = (java.util.ArrayList) r5
            kotlin.ResultKt.throwOnFailure(r14)
        L5e:
            r14 = r2
            goto Lb4
        L60:
            kotlin.ResultKt.throwOnFailure(r14)
            int r14 = r13.$size
            r2 = 1024(0x400, float:1.435E-42)
            int r14 = kotlin.ranges.RangesKt.coerceAtMost(r14, r2)
            int r2 = r13.$step
            int r9 = r13.$size
            int r2 = r2 - r9
            if (r2 < 0) goto Lf8
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>(r14)
            java.util.Iterator<T> r4 = r13.$iterator
            r5 = 0
            r12 = r3
            r3 = r14
            r14 = r5
            r5 = r12
        L7e:
            boolean r9 = r4.hasNext()
            if (r9 == 0) goto Lc6
            java.lang.Object r9 = r4.next()
            if (r14 <= 0) goto L8d
            int r14 = r14 + (-1)
            goto L7e
        L8d:
            r5.add(r9)
            int r10 = r5.size()
            int r11 = r13.$size
            if (r10 != r11) goto L7e
            r13.L$0 = r0
            r13.L$1 = r5
            r13.L$2 = r4
            java.lang.Object r9 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r9)
            r13.L$3 = r9
            r13.I$0 = r3
            r13.I$1 = r2
            r13.I$2 = r14
            r13.label = r7
            java.lang.Object r14 = r0.yield(r5, r13)
            if (r14 != r1) goto L5e
            goto L1a1
        Lb4:
            boolean r2 = r13.$reuseBuffer
            if (r2 == 0) goto Lbc
            r5.clear()
            goto Lc4
        Lbc:
            java.util.ArrayList r2 = new java.util.ArrayList
            int r5 = r13.$size
            r2.<init>(r5)
            r5 = r2
        Lc4:
            r2 = r14
            goto L7e
        Lc6:
            boolean r4 = r5.isEmpty()
            if (r4 != 0) goto L1a2
            boolean r4 = r13.$partialWindows
            if (r4 != 0) goto Ld8
            int r4 = r5.size()
            int r7 = r13.$size
            if (r4 != r7) goto L1a2
        Ld8:
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r0)
            r13.L$0 = r4
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r5)
            r13.L$1 = r4
            r13.L$2 = r8
            r13.L$3 = r8
            r13.I$0 = r3
            r13.I$1 = r2
            r13.I$2 = r14
            r13.label = r6
            java.lang.Object r14 = r0.yield(r5, r13)
            if (r14 != r1) goto L1a2
            goto L1a1
        Lf8:
            kotlin.collections.RingBuffer r6 = new kotlin.collections.RingBuffer
            r6.<init>(r14)
            java.util.Iterator<T> r7 = r13.$iterator
            r9 = r6
            r6 = r14
        L101:
            boolean r14 = r7.hasNext()
            if (r14 == 0) goto L14b
            java.lang.Object r14 = r7.next()
            r9.add(r14)
            boolean r10 = r9.isFull()
            if (r10 == 0) goto L101
            int r10 = r9.size()
            int r11 = r13.$size
            if (r10 >= r11) goto L121
            kotlin.collections.RingBuffer r9 = r9.expanded(r11)
            goto L101
        L121:
            boolean r10 = r13.$reuseBuffer
            if (r10 == 0) goto L127
            r10 = r9
            goto L12c
        L127:
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>(r9)
        L12c:
            r13.L$0 = r0
            r13.L$1 = r9
            r13.L$2 = r7
            java.lang.Object r14 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r14)
            r13.L$3 = r14
            r13.I$0 = r6
            r13.I$1 = r2
            r13.label = r5
            java.lang.Object r14 = r0.yield(r10, r13)
            if (r14 != r1) goto L145
            goto L1a1
        L145:
            int r14 = r13.$step
            r9.removeFirst(r14)
            goto L101
        L14b:
            boolean r14 = r13.$partialWindows
            if (r14 == 0) goto L1a2
            r5 = r6
            r6 = r9
        L151:
            int r14 = r6.size()
            int r7 = r13.$step
            if (r14 <= r7) goto L17f
            boolean r14 = r13.$reuseBuffer
            if (r14 == 0) goto L15f
            r14 = r6
            goto L164
        L15f:
            java.util.ArrayList r14 = new java.util.ArrayList
            r14.<init>(r6)
        L164:
            r13.L$0 = r0
            r13.L$1 = r6
            r13.L$2 = r8
            r13.L$3 = r8
            r13.I$0 = r5
            r13.I$1 = r2
            r13.label = r4
            java.lang.Object r14 = r0.yield(r14, r13)
            if (r14 != r1) goto L179
            goto L1a1
        L179:
            int r14 = r13.$step
            r6.removeFirst(r14)
            goto L151
        L17f:
            boolean r14 = r6.isEmpty()
            if (r14 != 0) goto L1a2
            java.lang.Object r14 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r0)
            r13.L$0 = r14
            java.lang.Object r14 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r13.L$1 = r14
            r13.L$2 = r8
            r13.L$3 = r8
            r13.I$0 = r5
            r13.I$1 = r2
            r13.label = r3
            java.lang.Object r14 = r0.yield(r6, r13)
            if (r14 != r1) goto L1a2
        L1a1:
            return r1
        L1a2:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.SlidingWindowKt$windowedIterator$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return invoke((SequenceScope) obj, continuation);
    }
}
