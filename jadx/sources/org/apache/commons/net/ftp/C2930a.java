package org.apache.commons.net.ftp;

import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import java.io.IOException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.apache.commons.net.imap.IMAP;
import p009a8.C0029a;
import p039d2.C1252h;
import p114k5.InterfaceC2049a;
import p114k5.InterfaceC2050b;
import p184r5.C3103a;
import p184r5.C3104b;
import p184r5.C3105c;
import p200t4.C3251l;
import p200t4.C3255p;
import p200t4.InterfaceC3242c;
import p211u4.EnumC3297j;

/* JADX INFO: renamed from: org.apache.commons.net.ftp.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2930a implements FTPFileFilter, IMAP.IMAPChunkListener, InterfaceC3242c, InterfaceC2049a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8126b;

    public /* synthetic */ C2930a(int i10) {
        this.f8126b = i10;
    }

    /* JADX INFO: renamed from: b */
    public static /* synthetic */ void m4660b(Object obj, Object obj2) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IOException(sb.toString());
    }

    /* JADX INFO: renamed from: c */
    public static /* synthetic */ void m4661c(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ void m4662d(Object obj, String str, Object obj2) {
        throw new C0029a(str + obj + obj2, 4);
    }

    @Override // p200t4.InterfaceC3242c
    /* JADX INFO: renamed from: a */
    public Object mo817a(C1252h c1252h) {
        switch (this.f8126b) {
            case 4:
                return AbtRegistrar.lambda$getComponents$0(c1252h);
            case 5:
                Set setMo2243e = c1252h.mo2243e(C3255p.m5189a(C3103a.class));
                C3105c c3105c = C3105c.f8865d;
                if (c3105c == null) {
                    synchronized (C3105c.class) {
                        try {
                            c3105c = C3105c.f8865d;
                            if (c3105c == null) {
                                c3105c = new C3105c(0);
                                C3105c.f8865d = c3105c;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return new C3104b(setMo2243e, c3105c);
            case 6:
            case 7:
            default:
                return TransportRegistrar.lambda$getComponents$2(c1252h);
            case 8:
                return (ScheduledExecutorService) ExecutorsRegistrar.f2617a.get();
            case 9:
                return (ScheduledExecutorService) ExecutorsRegistrar.f2619c.get();
            case 10:
                return (ScheduledExecutorService) ExecutorsRegistrar.f2618b.get();
            case 11:
                C3251l c3251l = ExecutorsRegistrar.f2617a;
                return EnumC3297j.f9650b;
            case 12:
                return TransportRegistrar.lambda$getComponents$0(c1252h);
            case 13:
                return TransportRegistrar.lambda$getComponents$1(c1252h);
        }
    }

    @Override // org.apache.commons.net.ftp.FTPFileFilter
    public boolean accept(FTPFile fTPFile) {
        switch (this.f8126b) {
            case 0:
                return Objects.nonNull(fTPFile);
            default:
                return FTPFileFilters.lambda$static$1(fTPFile);
        }
    }

    @Override // org.apache.commons.net.imap.IMAP.IMAPChunkListener
    public boolean chunkReceived(IMAP imap) {
        return IMAP.lambda$static$0(imap);
    }

    @Override // p114k5.InterfaceC2049a
    /* JADX INFO: renamed from: e */
    public void mo819e(InterfaceC2050b interfaceC2050b) {
    }
}
