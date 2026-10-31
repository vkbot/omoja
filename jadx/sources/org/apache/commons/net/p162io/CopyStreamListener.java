package org.apache.commons.net.p162io;

import java.util.EventListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface CopyStreamListener extends EventListener {
    void bytesTransferred(long j10, int i10, long j11);

    void bytesTransferred(CopyStreamEvent copyStreamEvent);
}
