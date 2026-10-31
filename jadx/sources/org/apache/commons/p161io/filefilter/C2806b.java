package org.apache.commons.p161io.filefilter;

import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import java.util.function.Consumer;
import org.apache.commons.net.p162io.CopyStreamEvent;
import org.apache.commons.net.p162io.CopyStreamListener;
import org.apache.commons.p161io.monitor.FileAlterationMonitor;
import org.apache.commons.p161io.monitor.FileAlterationObserver;
import p235x0.C3559m;

/* JADX INFO: renamed from: org.apache.commons.io.filefilter.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2806b implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7965b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f7966c;

    public /* synthetic */ C2806b(int i10, Object obj) {
        this.f7965b = i10;
        this.f7966c = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f7965b) {
            case 0:
                ((AndFileFilter) this.f7966c).addFileFilter((IOFileFilter) obj);
                break;
            case 1:
                ((OrFileFilter) this.f7966c).addFileFilter((IOFileFilter) obj);
                break;
            case 2:
                ((FileAlterationMonitor) this.f7966c).addObserver((FileAlterationObserver) obj);
                break;
            case 3:
                ((CopyStreamListener) obj).bytesTransferred((CopyStreamEvent) this.f7966c);
                break;
            default:
                ((WidgetBuilderFragment) this.f7966c).lambda$preview$31((C3559m) obj);
                break;
        }
    }
}
