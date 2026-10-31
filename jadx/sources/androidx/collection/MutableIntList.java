package androidx.collection;

import ai.onnxruntime.AbstractC0074a;
import androidx.annotation.IntRange;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.C2174b;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003J\u0018\u0010\b\u001a\u00020\u000b2\b\b\u0001\u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0001J\u0018\u0010\r\u001a\u00020\t2\b\b\u0001\u0010\f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0001J\u0018\u0010\r\u001a\u00020\t2\b\b\u0001\u0010\f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0003J\u0011\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0003H\u0086\nJ\u0011\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086\u0002J\u0011\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0003H\u0086\nJ\u0011\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086\u0002J\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0003J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0016\u001a\u00020\u00032\b\b\u0001\u0010\f\u001a\u00020\u0003J\u001a\u0010\u0017\u001a\u00020\u000b2\b\b\u0001\u0010\u0018\u001a\u00020\u00032\b\b\u0001\u0010\u0019\u001a\u00020\u0003J\u000e\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0001J\u000e\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001b\u0010\u001b\u001a\u00020\u00032\b\b\u0001\u0010\f\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0086\u0002J\u0006\u0010\u001c\u001a\u00020\u000bJ\u0006\u0010\u001d\u001a\u00020\u000bJ\u0010\u0010\u001e\u001a\u00020\u000b2\b\b\u0002\u0010\u001f\u001a\u00020\u0003R\u0012\u0010\u0005\u001a\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006 "}, m3159d2 = {"Landroidx/collection/MutableIntList;", "Landroidx/collection/IntList;", "initialCapacity", "", "(I)V", "capacity", "getCapacity", "()I", "add", "", "element", "", "index", "addAll", "elements", "", "clear", "ensureCapacity", "minusAssign", "plusAssign", "remove", "removeAll", "removeAt", "removeRange", "start", "end", "retainAll", "set", "sort", "sortDescending", "trim", "minCapacity", "collection"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nIntList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n+ 2 IntList.kt\nandroidx/collection/IntList\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,969:1\n549#1:970\n70#2:971\n253#2,6:974\n70#2:980\n70#2:981\n70#2:982\n70#2:989\n70#2:990\n13600#3,2:972\n1663#3,6:983\n*S KotlinDebug\n*F\n+ 1 IntList.kt\nandroidx/collection/MutableIntList\n*L\n692#1:970\n753#1:971\n772#1:974,6\n783#1:980\n787#1:981\n834#1:982\n850#1:989\n869#1:990\n763#1:972,2\n836#1:983,6\n*E\n"})
public final class MutableIntList extends IntList {
    public /* synthetic */ MutableIntList(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 16 : i10);
    }

    public static /* synthetic */ void trim$default(MutableIntList mutableIntList, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = mutableIntList._size;
        }
        mutableIntList.trim(i10);
    }

    public final void add(@IntRange(from = ULong.MIN_VALUE) int index, int element) {
        int i10;
        if (index < 0 || index > (i10 = this._size)) {
            C2174b.m3446a(AbstractC0074a.m166q(index, "Index ", " must be in 0.."), this._size);
            return;
        }
        ensureCapacity(i10 + 1);
        int[] iArr = this.content;
        int i11 = this._size;
        if (index != i11) {
            ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, index + 1, index, i11);
        }
        iArr[index] = element;
        this._size++;
    }

    public final boolean addAll(@IntRange(from = ULong.MIN_VALUE) int index, IntList elements) {
        elements.getClass();
        if (index < 0 || index > this._size) {
            C2174b.m3446a(AbstractC0074a.m166q(index, "Index ", " must be in 0.."), this._size);
            return false;
        }
        if (elements.isEmpty()) {
            return false;
        }
        ensureCapacity(this._size + elements._size);
        int[] iArr = this.content;
        int i10 = this._size;
        if (index != i10) {
            ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, elements._size + index, index, i10);
        }
        ArraysKt___ArraysJvmKt.copyInto(elements.content, iArr, index, 0, elements._size);
        this._size += elements._size;
        return true;
    }

    public final void clear() {
        this._size = 0;
    }

    public final void ensureCapacity(int capacity) {
        int[] iArr = this.content;
        if (iArr.length < capacity) {
            this.content = Arrays.copyOf(iArr, Math.max(capacity, (iArr.length * 3) / 2));
        }
    }

    public final int getCapacity() {
        return this.content.length;
    }

    public final void minusAssign(IntList elements) {
        elements.getClass();
        int[] iArr = elements.content;
        int i10 = elements._size;
        for (int i11 = 0; i11 < i10; i11++) {
            remove(iArr[i11]);
        }
    }

    public final void plusAssign(IntList elements) {
        elements.getClass();
        addAll(this._size, elements);
    }

    public final boolean remove(int element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public final boolean removeAll(IntList elements) {
        elements.getClass();
        int i10 = this._size;
        int i11 = elements._size - 1;
        if (i11 >= 0) {
            int i12 = 0;
            while (true) {
                remove(elements.get(i12));
                if (i12 == i11) {
                    break;
                }
                i12++;
            }
        }
        return i10 != this._size;
    }

    public final int removeAt(@IntRange(from = ULong.MIN_VALUE) int index) {
        int i10;
        if (index < 0 || index >= (i10 = this._size)) {
            C2174b.m3446a(AbstractC0074a.m166q(index, "Index ", " must be in 0.."), this._size - 1);
            return 0;
        }
        int[] iArr = this.content;
        int i11 = iArr[index];
        if (index != i10 - 1) {
            ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, index, index + 1, i10);
        }
        this._size--;
        return i11;
    }

    public final void removeRange(@IntRange(from = ULong.MIN_VALUE) int start, @IntRange(from = ULong.MIN_VALUE) int end) {
        int i10;
        if (start < 0 || start > (i10 = this._size) || end < 0 || end > i10) {
            C2174b.m3446a(AbstractC0074a.m171v("Start (", start, end, ") and end (", ") must be in 0.."), this._size);
            return;
        }
        if (end < start) {
            C1929i.m3026h("Start (", start, end, 41, ") is more than end (");
        } else if (end != start) {
            if (end < i10) {
                int[] iArr = this.content;
                ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, start, end, i10);
            }
            this._size -= end - start;
        }
    }

    public final boolean retainAll(int[] elements) {
        elements.getClass();
        int i10 = this._size;
        int[] iArr = this.content;
        int i11 = i10 - 1;
        while (true) {
            int i12 = -1;
            if (-1 >= i11) {
                break;
            }
            int i13 = iArr[i11];
            int length = elements.length;
            for (int i14 = 0; i14 < length; i14++) {
                if (elements[i14] == i13) {
                    i12 = i14;
                    break;
                }
            }
            if (i12 < 0) {
                removeAt(i11);
            }
            i11--;
        }
        return i10 != this._size;
    }

    public final int set(@IntRange(from = ULong.MIN_VALUE) int index, int element) {
        if (index < 0 || index >= this._size) {
            C2174b.m3446a(AbstractC0074a.m166q(index, "set index ", " must be between 0 .. "), this._size - 1);
            return 0;
        }
        int[] iArr = this.content;
        int i10 = iArr[index];
        iArr[index] = element;
        return i10;
    }

    public final void sort() {
        ArraysKt___ArraysJvmKt.sort(this.content, 0, this._size);
    }

    public final void sortDescending() {
        ArraysKt___ArraysKt.sortDescending(this.content, 0, this._size);
    }

    public final void trim(int minCapacity) {
        int iMax = Math.max(minCapacity, this._size);
        int[] iArr = this.content;
        if (iArr.length > iMax) {
            this.content = Arrays.copyOf(iArr, iMax);
        }
    }

    public final void plusAssign(int[] elements) {
        elements.getClass();
        addAll(this._size, elements);
    }

    public MutableIntList() {
        this(0, 1, null);
    }

    public final void plusAssign(int element) {
        add(element);
    }

    public MutableIntList(int i10) {
        super(i10, null);
    }

    public final void minusAssign(int[] elements) {
        elements.getClass();
        for (int i10 : elements) {
            remove(i10);
        }
    }

    public final void minusAssign(int element) {
        remove(element);
    }

    public final boolean removeAll(int[] elements) {
        elements.getClass();
        int i10 = this._size;
        for (int i11 : elements) {
            remove(i11);
        }
        return i10 != this._size;
    }

    public final boolean retainAll(IntList elements) {
        elements.getClass();
        int i10 = this._size;
        int[] iArr = this.content;
        for (int i11 = i10 - 1; -1 < i11; i11--) {
            if (!elements.contains(iArr[i11])) {
                removeAt(i11);
            }
        }
        return i10 != this._size;
    }

    public final boolean add(int element) {
        ensureCapacity(this._size + 1);
        int[] iArr = this.content;
        int i10 = this._size;
        iArr[i10] = element;
        this._size = i10 + 1;
        return true;
    }

    public final boolean addAll(@IntRange(from = ULong.MIN_VALUE) int index, int[] elements) {
        int i10;
        elements.getClass();
        if (index >= 0 && index <= (i10 = this._size)) {
            if (elements.length == 0) {
                return false;
            }
            ensureCapacity(i10 + elements.length);
            int[] iArr = this.content;
            int i11 = this._size;
            if (index != i11) {
                ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, elements.length + index, index, i11);
            }
            ArraysKt___ArraysJvmKt.copyInto$default(elements, iArr, index, 0, 0, 12, (Object) null);
            this._size += elements.length;
            return true;
        }
        C2174b.m3446a(AbstractC0074a.m166q(index, "Index ", " must be in 0.."), this._size);
        return false;
    }

    public final boolean addAll(IntList elements) {
        elements.getClass();
        return addAll(this._size, elements);
    }

    public final boolean addAll(int[] elements) {
        elements.getClass();
        return addAll(this._size, elements);
    }
}
