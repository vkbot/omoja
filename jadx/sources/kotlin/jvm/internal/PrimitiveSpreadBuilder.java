package kotlin.jvm.internal;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\u0004*\u00028\u0000H$¢\u0006\u0002\u0010\bJ\u0013\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0002\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0004H\u0004J\u001d\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\u0004X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\u0006R\u001e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000eX\u0082\u0004¢\u0006\n\n\u0002\u0010\u0011\u0012\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, m3159d2 = {"Lkotlin/jvm/internal/PrimitiveSpreadBuilder;", ExifInterface.GPS_DIRECTION_TRUE, "", "size", "", "<init>", "(I)V", "getSize", "(Ljava/lang/Object;)I", "position", "getPosition", "()I", "setPosition", "spreads", "", "getSpreads$annotations", "()V", "[Ljava/lang/Object;", "addSpread", "", "spreadArgument", "(Ljava/lang/Object;)V", "toArray", "values", "result", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public abstract class PrimitiveSpreadBuilder<T> {
    private int position;
    private final int size;
    private final T[] spreads;

    public PrimitiveSpreadBuilder(int i10) {
        this.size = i10;
        this.spreads = (T[]) new Object[i10];
    }

    public final void addSpread(T spreadArgument) {
        spreadArgument.getClass();
        T[] tArr = this.spreads;
        int i10 = this.position;
        this.position = i10 + 1;
        tArr[i10] = spreadArgument;
    }

    public final int getPosition() {
        return this.position;
    }

    public abstract int getSize(T t);

    public final void setPosition(int i10) {
        this.position = i10;
    }

    public final int size() {
        int i10 = this.size - 1;
        int size = 0;
        if (i10 >= 0) {
            int i11 = 0;
            while (true) {
                T t = this.spreads[i11];
                size += t != null ? getSize(t) : 1;
                if (i11 == i10) {
                    break;
                }
                i11++;
            }
        }
        return size;
    }

    public final T toArray(T values, T result) {
        int i10;
        values.getClass();
        result.getClass();
        int i11 = this.size - 1;
        int i12 = 0;
        if (i11 >= 0) {
            int i13 = 0;
            int i14 = 0;
            i10 = 0;
            while (true) {
                T t = this.spreads[i13];
                if (t != null) {
                    if (i14 < i13) {
                        int i15 = i13 - i14;
                        System.arraycopy(values, i14, result, i10, i15);
                        i10 += i15;
                    }
                    int size = getSize(t);
                    System.arraycopy(t, 0, result, i10, size);
                    i10 += size;
                    i14 = i13 + 1;
                }
                if (i13 == i11) {
                    break;
                }
                i13++;
            }
            i12 = i14;
        } else {
            i10 = 0;
        }
        int i16 = this.size;
        if (i12 < i16) {
            System.arraycopy(values, i12, result, i10, i16 - i12);
        }
        return result;
    }

    private static /* synthetic */ void getSpreads$annotations() {
    }
}
