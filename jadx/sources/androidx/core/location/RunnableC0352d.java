package androidx.core.location;

import android.location.Location;
import androidx.core.util.Consumer;

/* JADX INFO: renamed from: androidx.core.location.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0352d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f348b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Consumer f349c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Location f350d;

    public /* synthetic */ RunnableC0352d(Consumer consumer, Location location, int i10) {
        this.f348b = i10;
        this.f349c = consumer;
        this.f350d = location;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f348b) {
            case 0:
                this.f349c.accept(this.f350d);
                break;
            default:
                this.f349c.accept(this.f350d);
                break;
        }
    }
}
