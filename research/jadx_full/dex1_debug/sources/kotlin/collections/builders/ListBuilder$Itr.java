package kotlin.collections.builders;

import ai.onnxruntime.b;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import j1.i;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u000b\u001a\u00020\fH\u0016J\t\u0010\r\u001a\u00020\fH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\r\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0011J\u000e\u0010\u0012\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0016J\b\u0010\u0018\u001a\u00020\u0014H\u0016J\b\u0010\u0019\u001a\u00020\u0014H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lkotlin/collections/builders/ListBuilder$Itr;", ExifInterface.LONGITUDE_EAST, "", "list", "Lkotlin/collections/builders/ListBuilder;", "index", "", "<init>", "(Lkotlin/collections/builders/ListBuilder;I)V", "lastIndex", "expectedModCount", "hasPrevious", "", "hasNext", "previousIndex", "nextIndex", "previous", "()Ljava/lang/Object;", "next", "set", "", "element", "(Ljava/lang/Object;)V", "add", "remove", "checkForComodification", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,722:1\n1#2:723\n*E\n"})
public final class ListBuilder$Itr<E> implements ListIterator<E>, KMutableListIterator {
    private int expectedModCount;
    private int index;
    private int lastIndex;
    private final ListBuilder<E> list;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListBuilder$Itr(ListBuilder<E> listBuilder, int i9) {
        listBuilder.getClass();
        this.list = listBuilder;
        this.index = i9;
        this.lastIndex = -1;
        this.expectedModCount = ListBuilder.m562access$getModCount$p$s2084097795(listBuilder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void checkForComodification() {
        if (ListBuilder.m562access$getModCount$p$s2084097795(this.list) == this.expectedModCount) {
            return;
        }
        b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator
    public void add(E element) {
        checkForComodification();
        ListBuilder<E> listBuilder = this.list;
        int i9 = this.index;
        this.index = i9 + 1;
        listBuilder.add(i9, element);
        this.lastIndex = -1;
        this.expectedModCount = ListBuilder.m562access$getModCount$p$s2084097795(this.list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.index < ListBuilder.access$getLength$p(this.list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.index > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        checkForComodification();
        if (this.index >= ListBuilder.access$getLength$p(this.list)) {
            n0.b.x();
            return null;
        }
        int i9 = this.index;
        this.index = i9 + 1;
        this.lastIndex = i9;
        return (E) ListBuilder.access$getBacking$p(this.list)[this.lastIndex];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.index;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator
    public E previous() {
        checkForComodification();
        int i9 = this.index;
        if (i9 <= 0) {
            n0.b.x();
            return null;
        }
        int i10 = i9 - 1;
        this.index = i10;
        this.lastIndex = i10;
        return (E) ListBuilder.access$getBacking$p(this.list)[this.lastIndex];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.index - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        checkForComodification();
        int i9 = this.lastIndex;
        if (i9 == -1) {
            i.l("Call next() or previous() before removing element from the iterator.");
            return;
        }
        this.list.removeAt(i9);
        this.index = this.lastIndex;
        this.lastIndex = -1;
        this.expectedModCount = ListBuilder.m562access$getModCount$p$s2084097795(this.list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.ListIterator
    public void set(E element) {
        checkForComodification();
        int i9 = this.lastIndex;
        if (i9 != -1) {
            this.list.set(i9, element);
        } else {
            i.l("Call next() or previous() before replacing element from the iterator.");
        }
    }
}
