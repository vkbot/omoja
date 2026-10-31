package p252y7;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.TimeUnit;
import p033c8.EnumC1012b;
import p142n0.C2467b;
import p242x7.AbstractC3593j;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: y7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3661c extends AbstractC3593j {

    /* JADX INFO: renamed from: b */
    public final Handler f10850b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f10851c;

    public C3661c(Handler handler) {
        this.f10850b = handler;
    }

    @Override // p242x7.AbstractC3593j
    /* JADX INFO: renamed from: a */
    public final InterfaceC3762a mo3778a(Runnable runnable, TimeUnit timeUnit) {
        EnumC1012b enumC1012b = EnumC1012b.f1015b;
        if (TimeUnit.NANOSECONDS == null) {
            C2467b.m3828n("unit == null");
            return null;
        }
        if (this.f10851c) {
            return enumC1012b;
        }
        Handler handler = this.f10850b;
        RunnableC3662d runnableC3662d = new RunnableC3662d(handler, runnable);
        Message messageObtain = Message.obtain(handler, runnableC3662d);
        messageObtain.obj = this;
        this.f10850b.sendMessageDelayed(messageObtain, 0L);
        if (!this.f10851c) {
            return runnableC3662d;
        }
        this.f10850b.removeCallbacks(runnableC3662d);
        return enumC1012b;
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        this.f10851c = true;
        this.f10850b.removeCallbacksAndMessages(this);
    }
}
