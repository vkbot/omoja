package kotlin.sequences;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import p142n0.C2467b;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0013\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000e\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0003H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m3159d2 = {"kotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1", "", "_hasNext", "", "next", "()Ljava/lang/Object;", "hasNext", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class SequencesKt__SequencesKt$sequenceOf$1$1<T> implements Iterator<T>, KMappedMarker {
    final /* synthetic */ T $element;
    private boolean _hasNext = true;

    public SequencesKt__SequencesKt$sequenceOf$1$1(T t) {
        this.$element = t;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this._hasNext;
    }

    @Override // java.util.Iterator
    public T next() {
        if (this._hasNext) {
            this._hasNext = false;
            return this.$element;
        }
        C2467b.m3834x();
        return null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
