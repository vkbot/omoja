package org.apache.commons.net.ftp;

import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import d2.h;
import java.io.IOException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.apache.commons.net.imap.IMAP;
import org.apache.commons.net.imap.IMAP$IMAPChunkListener;
import r5.b;
import t4.c;
import t4.l;
import t4.p;
import u4.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements FTPFileFilter, IMAP$IMAPChunkListener, c, k5.a {
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i) {
        this.b = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: TODO: convert one arg to string using `String.valueOf()`, args: r1v0, r2v0 */
    public static /* synthetic */ void b(Object obj, Object obj2) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IOException(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: Thrown type has an unknown type hierarchy: a8.a */
    public static /* synthetic */ void d(Object obj, String str, Object obj2) throws a8.a {
        throw new a8.a(str + obj + obj2, 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object a(h hVar) {
        switch (this.b) {
            case 4:
                return AbtRegistrar.a(hVar);
            case 5:
                Set setE = hVar.e(p.a(r5.a.class));
                r5.c cVar = r5.c.d;
                if (cVar == null) {
                    synchronized (r5.c.class) {
                        try {
                            cVar = r5.c.d;
                            if (cVar == null) {
                                cVar = new r5.c(0);
                                r5.c.d = cVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return new b(setE, cVar);
            case 6:
            case 7:
            default:
                return TransportRegistrar.a(hVar);
            case 8:
                return (ScheduledExecutorService) ExecutorsRegistrar.a.get();
            case 9:
                return (ScheduledExecutorService) ExecutorsRegistrar.c.get();
            case 10:
                return (ScheduledExecutorService) ExecutorsRegistrar.b.get();
            case 11:
                l lVar = ExecutorsRegistrar.a;
                return j.b;
            case 12:
                return TransportRegistrar.c(hVar);
            case 13:
                return TransportRegistrar.b(hVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTPFileFilter
    public boolean accept(FTPFile fTPFile) {
        switch (this.b) {
            case 0:
                return Objects.nonNull(fTPFile);
            default:
                return FTPFileFilters.b(fTPFile);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.imap.IMAP$IMAPChunkListener
    public boolean chunkReceived(IMAP imap) {
        return IMAP.a(imap);
    }

    public void e(k5.b bVar) {
    }
}
