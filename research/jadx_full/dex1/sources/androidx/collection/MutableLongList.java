package androidx.collection;

import ai.onnxruntime.a;
import androidx.annotation.IntRange;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\b\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0001J\u0018\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\n\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0001J\u0018\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\n\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\tJ\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0003J\u0011\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0086\nJ\u0011\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086\u0002J\u0011\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0086\nJ\u0011\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086\u0002J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0001J\u000e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0017\u001a\u00020\f2\b\b\u0001\u0010\n\u001a\u00020\u0003J\u001a\u0010\u0018\u001a\u00020\t2\b\b\u0001\u0010\u0019\u001a\u00020\u00032\b\b\u0001\u0010\u001a\u001a\u00020\u0003J\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0001J\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u001b\u0010\u001c\u001a\u00020\f2\b\b\u0001\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0086\u0002J\u0006\u0010\u001d\u001a\u00020\tJ\u0006\u0010\u001e\u001a\u00020\tJ\u0010\u0010\u001f\u001a\u00020\t2\b\b\u0002\u0010 \u001a\u00020\u0003R\u0012\u0010\u0005\u001a\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006!"}, d2 = {"Landroidx/collection/MutableLongList;", "Landroidx/collection/LongList;", "initialCapacity", "", "(I)V", "capacity", "getCapacity", "()I", "add", "", "index", "element", "", "", "addAll", "elements", "", "clear", "ensureCapacity", "minusAssign", "plusAssign", "remove", "removeAll", "removeAt", "removeRange", "start", "end", "retainAll", "set", "sort", "sortDescending", "trim", "minCapacity", "collection"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nLongList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongList.kt\nandroidx/collection/MutableLongList\n+ 2 LongList.kt\nandroidx/collection/LongList\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,969:1\n549#1:970\n70#2:971\n253#2,6:974\n70#2:980\n70#2:981\n70#2:982\n70#2:989\n70#2:990\n13607#3,2:972\n1675#3,6:983\n*S KotlinDebug\n*F\n+ 1 LongList.kt\nandroidx/collection/MutableLongList\n*L\n692#1:970\n753#1:971\n772#1:974,6\n783#1:980\n787#1:981\n834#1:982\n850#1:989\n869#1:990\n763#1:972,2\n836#1:983,6\n*E\n"})
public final class MutableLongList extends LongList {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ MutableLongList(int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 16 : i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void trim$default(MutableLongList mutableLongList, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = mutableLongList._size;
        }
        mutableLongList.trim(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void add(@IntRange(from = ULong.MIN_VALUE) int index, long element) {
        int i9;
        if (index < 0 || index > (i9 = this._size)) {
            b.a(a.q(index, "Index ", " must be in 0.."), this._size);
            return;
        }
        ensureCapacity(i9 + 1);
        long[] jArr = this.content;
        int i10 = this._size;
        if (index != i10) {
            ArraysKt.l(jArr, jArr, index + 1, index, i10);
        }
        jArr[index] = element;
        this._size++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean addAll(@IntRange(from = ULong.MIN_VALUE) int index, LongList elements) {
        elements.getClass();
        if (index < 0 || index > this._size) {
            b.a(a.q(index, "Index ", " must be in 0.."), this._size);
            return false;
        }
        if (elements.isEmpty()) {
            return false;
        }
        ensureCapacity(this._size + elements._size);
        long[] jArr = this.content;
        int i9 = this._size;
        if (index != i9) {
            ArraysKt.l(jArr, jArr, elements._size + index, index, i9);
        }
        ArraysKt.l(elements.content, jArr, index, 0, elements._size);
        this._size += elements._size;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void clear() {
        this._size = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void ensureCapacity(int capacity) {
        long[] jArr = this.content;
        if (jArr.length < capacity) {
            this.content = Arrays.copyOf(jArr, Math.max(capacity, (jArr.length * 3) / 2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getCapacity() {
        return this.content.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void minusAssign(LongList elements) {
        elements.getClass();
        long[] jArr = elements.content;
        int i9 = elements._size;
        for (int i10 = 0; i10 < i9; i10++) {
            remove(jArr[i10]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void plusAssign(LongList elements) {
        elements.getClass();
        addAll(this._size, elements);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean remove(long element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean removeAll(LongList elements) {
        elements.getClass();
        int i9 = this._size;
        int i10 = elements._size - 1;
        if (i10 >= 0) {
            int i11 = 0;
            while (true) {
                remove(elements.get(i11));
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        return i9 != this._size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long removeAt(@IntRange(from = ULong.MIN_VALUE) int index) {
        int i9;
        if (index < 0 || index >= (i9 = this._size)) {
            b.a(a.q(index, "Index ", " must be in 0.."), this._size - 1);
            return 0L;
        }
        long[] jArr = this.content;
        long j9 = jArr[index];
        if (index != i9 - 1) {
            ArraysKt.l(jArr, jArr, index, index + 1, i9);
        }
        this._size--;
        return j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void removeRange(@IntRange(from = ULong.MIN_VALUE) int start, @IntRange(from = ULong.MIN_VALUE) int end) {
        int i9;
        if (start < 0 || start > (i9 = this._size) || end < 0 || end > i9) {
            b.a(a.v("Start (", start, end, ") and end (", ") must be in 0.."), this._size);
            return;
        }
        if (end < start) {
            i.h("Start (", start, end, 41, ") is more than end (");
        } else if (end != start) {
            if (end < i9) {
                long[] jArr = this.content;
                ArraysKt.l(jArr, jArr, start, end, i9);
            }
            this._size -= end - start;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean retainAll(long[] elements) {
        elements.getClass();
        int i9 = this._size;
        long[] jArr = this.content;
        int i10 = i9 - 1;
        while (true) {
            int i11 = -1;
            if (-1 >= i10) {
                break;
            }
            long j9 = jArr[i10];
            int length = elements.length;
            for (int i12 = 0; i12 < length; i12++) {
                if (elements[i12] == j9) {
                    i11 = i12;
                    break;
                }
            }
            if (i11 < 0) {
                removeAt(i10);
            }
            i10--;
        }
        return i9 != this._size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long set(@IntRange(from = ULong.MIN_VALUE) int index, long element) {
        if (index < 0 || index >= this._size) {
            b.a(a.q(index, "set index ", " must be between 0 .. "), this._size - 1);
            return 0L;
        }
        long[] jArr = this.content;
        long j9 = jArr[index];
        jArr[index] = element;
        return j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void sort() {
        ArraysKt.B(this.content, this._size);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void sortDescending() {
        ArraysKt.E(this.content, this._size);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void trim(int minCapacity) {
        int iMax = Math.max(minCapacity, this._size);
        long[] jArr = this.content;
        if (jArr.length > iMax) {
            this.content = Arrays.copyOf(jArr, iMax);
        }
    }

    public final void plusAssign(long[] elements) {
        elements.getClass();
        addAll(this._size, elements);
    }

    public MutableLongList() {
        this(0, 1, null);
    }

    public final void plusAssign(long element) {
        add(element);
    }

    public MutableLongList(int i9) {
        super(i9, null);
    }

    public final void minusAssign(long[] elements) {
        elements.getClass();
        for (long j9 : elements) {
            remove(j9);
        }
    }

    public final void minusAssign(long element) {
        remove(element);
    }

    public final boolean removeAll(long[] elements) {
        elements.getClass();
        int i9 = this._size;
        for (long j9 : elements) {
            remove(j9);
        }
        return i9 != this._size;
    }

    public final boolean retainAll(LongList elements) {
        elements.getClass();
        int i9 = this._size;
        long[] jArr = this.content;
        for (int i10 = i9 - 1; -1 < i10; i10--) {
            if (!elements.contains(jArr[i10])) {
                removeAt(i10);
            }
        }
        return i9 != this._size;
    }

    public final boolean add(long element) {
        ensureCapacity(this._size + 1);
        long[] jArr = this.content;
        int i9 = this._size;
        jArr[i9] = element;
        this._size = i9 + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = ULong.MIN_VALUE) int index, long[] elements) {
        int i9;
        elements.getClass();
        if (index >= 0 && index <= (i9 = this._size)) {
            if (elements.length == 0) {
                return false;
            }
            ensureCapacity(i9 + elements.length);
            long[] jArr = this.content;
            int i10 = this._size;
            if (index != i10) {
                ArraysKt.l(jArr, jArr, elements.length + index, index, i10);
            }
            ArraysKt.r(elements, jArr, index);
            this._size += elements.length;
            return true;
        }
        b.a(a.q(index, "Index ", " must be in 0.."), this._size);
        return false;
    }

    public final boolean addAll(LongList elements) {
        elements.getClass();
        return addAll(this._size, elements);
    }

    public final boolean addAll(long[] elements) {
        elements.getClass();
        return addAll(this._size, elements);
    }
}
