package p141n;

import android.util.Log;
import com.bumptech.glide.EnumC1035h;
import com.bumptech.glide.load.data.InterfaceC1043d;
import com.bumptech.glide.load.data.InterfaceC1044e;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import p025c0.AbstractC0933b;

/* JADX INFO: renamed from: n.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2439d implements InterfaceC1044e {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f6612b;

    /* JADX INFO: renamed from: c */
    public final Object f6613c;

    public /* synthetic */ C2439d(int i10, Object obj) {
        this.f6612b = i10;
        this.f6613c = obj;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: a */
    public final Class mo1316a() {
        switch (this.f6612b) {
            case 0:
                return ByteBuffer.class;
            default:
                return this.f6613c.getClass();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: b */
    public final void mo1321b() {
        int i10 = this.f6612b;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: c */
    public final int mo1322c() {
        switch (this.f6612b) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    public final void cancel() {
        int i10 = this.f6612b;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1044e
    /* JADX INFO: renamed from: e */
    public final void mo1323e(EnumC1035h enumC1035h, InterfaceC1043d interfaceC1043d) {
        switch (this.f6612b) {
            case 0:
                try {
                    interfaceC1043d.mo242f(AbstractC0933b.m1065a((File) this.f6613c));
                } catch (IOException e) {
                    if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                        Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
                    }
                    interfaceC1043d.mo240d(e);
                    return;
                }
                break;
            default:
                interfaceC1043d.mo242f(this.f6613c);
                break;
        }
    }

    /* JADX INFO: renamed from: d */
    private final void m3794d() {
    }

    /* JADX INFO: renamed from: f */
    private final void m3795f() {
    }

    /* JADX INFO: renamed from: g */
    private final void m3796g() {
    }

    /* JADX INFO: renamed from: h */
    private final void m3797h() {
    }
}
