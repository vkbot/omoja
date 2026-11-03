package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import com.android.launcher3.LauncherSettings;
import com.mega.launcherapi.WallpaperConstant;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0;
import kotlin.TypeCastException;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.Segment;

/* JADX INFO: compiled from: SegmentQueue.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000e\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\u000b\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00018\u00002\b\u0010\t\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\r\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0004\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\r\u001a\u0004\u0018\u00018\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\n8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/internal/Segment;", ExifInterface.LATITUDE_SOUTH, "", "", WallpaperConstant.WALLPAPER_COLUMN_ID, "prev", "<init>", "(JLkotlinx/coroutines/internal/Segment;)V", "expected", LauncherSettings.Settings.EXTRA_VALUE, "", "casNext", "(Lkotlinx/coroutines/internal/Segment;Lkotlinx/coroutines/internal/Segment;)Z", "next", "", "moveNextToRight", "(Lkotlinx/coroutines/internal/Segment;)V", "movePrevToLeft", "remove", "()V", "J", "getId", "()J", "getNext", "()Lkotlinx/coroutines/internal/Segment;", "getRemoved", "()Z", "removed", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
public abstract class Segment<S extends Segment<S>> {
    private static final AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(Segment.class, Object.class, "_next");
    static final AtomicReferenceFieldUpdater prev$FU = AtomicReferenceFieldUpdater.newUpdater(Segment.class, Object.class, "prev");
    private volatile Object _next = null;
    private final long id;
    volatile Object prev;

    public final long getId() {
        return this.id;
    }

    public abstract boolean getRemoved();

    public Segment(long j, S s) {
        this.id = j;
        this.prev = null;
        this.prev = s;
    }

    public final S getNext() {
        return (S) this._next;
    }

    public final boolean casNext(S expected, S value) {
        return SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0.m(_next$FU, this, expected, value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void remove() {
        Segment segment;
        Segment next;
        Segment segment2;
        if (DebugKt.getASSERTIONS_ENABLED() && !getRemoved()) {
            throw new AssertionError();
        }
        Segment segment3 = (Segment) this._next;
        if (segment3 == 0 || (segment = (Segment) this.prev) == 0) {
            return;
        }
        segment.moveNextToRight(segment3);
        Segment segment4 = segment;
        while (segment4.getRemoved() && (segment2 = (Segment) segment4.prev) != 0) {
            segment2.moveNextToRight(segment3);
            segment4 = segment2;
        }
        segment3.movePrevToLeft(segment4);
        Segment segment5 = segment3;
        while (segment5.getRemoved() && (next = segment5.getNext()) != 0) {
            next.movePrevToLeft(segment4);
            segment5 = next;
        }
    }

    private final void moveNextToRight(S next) {
        Segment segment;
        do {
            Object obj = this._next;
            if (obj != null) {
                segment = (Segment) obj;
                if (next.id <= segment.id) {
                    return;
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type S");
            }
        } while (!SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0.m(_next$FU, this, segment, next));
    }

    private final void movePrevToLeft(S prev) {
        Segment segment;
        do {
            segment = (Segment) this.prev;
            if (segment == null || segment.id <= prev.id) {
                return;
            }
        } while (!SafePublicationLazyImpl$$ExternalSyntheticBackportWithForwarding0.m(prev$FU, this, segment, prev));
    }
}
