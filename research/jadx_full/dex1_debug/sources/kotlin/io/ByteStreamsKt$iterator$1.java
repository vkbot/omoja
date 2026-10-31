package kotlin.io;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.io.BufferedInputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.ByteIterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\t\u0010\u0013\u001a\u00020\tH\u0096\u0002J\b\u0010\u0002\u001a\u00020\u0014H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\r¨\u0006\u0015"}, d2 = {"kotlin/io/ByteStreamsKt$iterator$1", "Lkotlin/collections/ByteIterator;", "nextByte", "", "getNextByte", "()I", "setNextByte", "(I)V", "nextPrepared", "", "getNextPrepared", "()Z", "setNextPrepared", "(Z)V", "finished", "getFinished", "setFinished", "prepareNext", "", "hasNext", "", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ByteStreamsKt$iterator$1 extends ByteIterator {
    final /* synthetic */ BufferedInputStream $this_iterator;
    private boolean finished;
    private int nextByte = -1;
    private boolean nextPrepared;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteStreamsKt$iterator$1(BufferedInputStream bufferedInputStream) {
        this.$this_iterator = bufferedInputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void prepareNext() throws IOException {
        if (this.nextPrepared || this.finished) {
            return;
        }
        int i9 = this.$this_iterator.read();
        this.nextByte = i9;
        this.nextPrepared = true;
        this.finished = i9 == -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getFinished() {
        return this.finished;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getNextByte() {
        return this.nextByte;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getNextPrepared() {
        return this.nextPrepared;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() throws IOException {
        prepareNext();
        return !this.finished;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.ByteIterator
    public byte nextByte() throws IOException {
        prepareNext();
        if (this.finished) {
            i.g("Input stream is over.");
            return (byte) 0;
        }
        byte b9 = (byte) this.nextByte;
        this.nextPrepared = false;
        return b9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setFinished(boolean z8) {
        this.finished = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setNextByte(int i9) {
        this.nextByte = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setNextPrepared(boolean z8) {
        this.nextPrepared = z8;
    }
}
