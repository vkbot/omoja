package org.apache.commons.net.p162io;

import java.util.function.Consumer;
import org.apache.commons.net.util.ListenerList;
import org.apache.commons.p161io.filefilter.C2806b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CopyStreamAdapter implements CopyStreamListener {
    private final ListenerList<CopyStreamListener> listeners = new ListenerList<>();

    public void addCopyStreamListener(CopyStreamListener copyStreamListener) {
        this.listeners.addListener(copyStreamListener);
    }

    @Override // org.apache.commons.net.p162io.CopyStreamListener
    public void bytesTransferred(final long j10, final int i10, final long j11) {
        this.listeners.forEach(new Consumer() { // from class: org.apache.commons.net.io.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((CopyStreamListener) obj).bytesTransferred(j10, i10, j11);
            }
        });
    }

    public void removeCopyStreamListener(CopyStreamListener copyStreamListener) {
        this.listeners.removeListener(copyStreamListener);
    }

    @Override // org.apache.commons.net.p162io.CopyStreamListener
    public void bytesTransferred(CopyStreamEvent copyStreamEvent) {
        this.listeners.forEach(new C2806b(3, copyStreamEvent));
    }
}
