package org.apache.commons.net.io;

import org.apache.commons.io.filefilter.b;
import org.apache.commons.net.util.ListenerList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class CopyStreamAdapter implements CopyStreamListener {
    private final ListenerList<CopyStreamListener> listeners = new ListenerList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(CopyStreamEvent copyStreamEvent, CopyStreamListener copyStreamListener) {
        lambda$bytesTransferred$0(copyStreamEvent, copyStreamListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(long j, int i, long j2, CopyStreamListener copyStreamListener) {
        lambda$bytesTransferred$1(j, i, j2, copyStreamListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$bytesTransferred$0(CopyStreamEvent copyStreamEvent, CopyStreamListener copyStreamListener) {
        copyStreamListener.bytesTransferred(copyStreamEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$bytesTransferred$1(long j, int i, long j2, CopyStreamListener copyStreamListener) {
        copyStreamListener.bytesTransferred(j, i, j2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCopyStreamListener(CopyStreamListener copyStreamListener) {
        this.listeners.addListener(copyStreamListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.io.CopyStreamListener
    public void bytesTransferred(long j, int i, long j2) {
        this.listeners.forEach(new a(i, j, j2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeCopyStreamListener(CopyStreamListener copyStreamListener) {
        this.listeners.removeListener(copyStreamListener);
    }

    @Override // org.apache.commons.net.io.CopyStreamListener
    public void bytesTransferred(CopyStreamEvent copyStreamEvent) {
        this.listeners.forEach(new b(3, copyStreamEvent));
    }
}
