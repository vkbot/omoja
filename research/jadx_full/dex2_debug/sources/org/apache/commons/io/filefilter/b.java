package org.apache.commons.io.filefilter;

import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import java.util.function.Consumer;
import org.apache.commons.io.monitor.FileAlterationMonitor;
import org.apache.commons.io.monitor.FileAlterationObserver;
import org.apache.commons.net.io.CopyStreamAdapter;
import org.apache.commons.net.io.CopyStreamEvent;
import org.apache.commons.net.io.CopyStreamListener;
import x0.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class b implements Consumer {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(int i, Object obj) {
        this.b = i;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                ((AndFileFilter) this.c).addFileFilter((IOFileFilter) obj);
                break;
            case 1:
                ((OrFileFilter) this.c).addFileFilter((IOFileFilter) obj);
                break;
            case 2:
                ((FileAlterationMonitor) this.c).addObserver((FileAlterationObserver) obj);
                break;
            case 3:
                CopyStreamAdapter.a((CopyStreamEvent) this.c, (CopyStreamListener) obj);
                break;
            default:
                WidgetBuilderFragment.N((WidgetBuilderFragment) this.c, (m) obj);
                break;
        }
    }
}
