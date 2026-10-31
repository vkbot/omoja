package p205u;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p025c0.AbstractC0941j;
import p066g.C1596b;
import p066g.C1597c;
import p066g.C1598d;
import p077h.C1646h;
import p077h.EnumC1639a;
import p077h.InterfaceC1648j;
import p108k.C2019g;
import p108k.InterfaceC2014b;
import p120l.C2186c;
import p120l.C2187d;
import p155o4.AbstractC2587b;
import p182r3.C3094a;
import p188s.C3127b;
import p258z3.C3720f;

/* JADX INFO: renamed from: u.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3269a implements InterfaceC1648j {

    /* JADX INFO: renamed from: f */
    public static final C3720f f9563f = new C3720f(17);

    /* JADX INFO: renamed from: g */
    public static final C2186c f9564g = new C2186c(1);

    /* JADX INFO: renamed from: a */
    public final Context f9565a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f9566b;

    /* JADX INFO: renamed from: e */
    public final C2187d f9569e;

    /* JADX INFO: renamed from: d */
    public final C3720f f9568d = f9563f;

    /* JADX INFO: renamed from: c */
    public final C2186c f9567c = f9564g;

    public C3269a(Context context, ArrayList arrayList, InterfaceC2014b interfaceC2014b, C2019g c2019g) {
        this.f9565a = context.getApplicationContext();
        this.f9566b = arrayList;
        this.f9569e = new C2187d(18, interfaceC2014b, c2019g);
    }

    /* JADX INFO: renamed from: d */
    public static int m5209d(C1596b c1596b, int i10, int i11) {
        int iMin = Math.min(c1596b.f3984g / i11, c1596b.f3983f / i10);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            StringBuilder sbM171v = AbstractC0074a.m171v("Downsampling GIF, sampleSize: ", iMax, i10, ", target dimens: [", "x");
            sbM171v.append(i11);
            sbM171v.append("], actual dimens: [");
            sbM171v.append(c1596b.f3983f);
            sbM171v.append("x");
            sbM171v.append(c1596b.f3984g);
            sbM171v.append("]");
            Log.v("BufferGifDecoder", sbM171v.toString());
        }
        return iMax;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:25:0x0059
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: a */
    public final p097j.InterfaceC1889d0 mo2730a(java.lang.Object r8, int r9, int r10, p077h.C1646h r11) {
        /*
            r7 = this;
            r2 = r8
            java.nio.ByteBuffer r2 = (java.nio.ByteBuffer) r2
            l.c r8 = r7.f9567c
            monitor-enter(r8)
            java.util.ArrayDeque r0 = r8.f5703a     // Catch: java.lang.Throwable -> L54
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L54
            g.c r0 = (p066g.C1597c) r0     // Catch: java.lang.Throwable -> L54
            if (r0 != 0) goto L15
            g.c r0 = new g.c     // Catch: java.lang.Throwable -> L17
            r0.<init>()     // Catch: java.lang.Throwable -> L17
        L15:
            r5 = r0
            goto L1b
        L17:
            r0 = move-exception
            r9 = r0
            r1 = r7
            goto L57
        L1b:
            r0 = 0
            r5.f3990b = r0     // Catch: java.lang.Throwable -> L54
            byte[] r0 = r5.f3989a     // Catch: java.lang.Throwable -> L54
            r1 = 0
            java.util.Arrays.fill(r0, r1)     // Catch: java.lang.Throwable -> L54
            g.b r0 = new g.b     // Catch: java.lang.Throwable -> L54
            r0.<init>()     // Catch: java.lang.Throwable -> L54
            r5.f3991c = r0     // Catch: java.lang.Throwable -> L54
            r5.f3992d = r1     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r2.asReadOnlyBuffer()     // Catch: java.lang.Throwable -> L54
            r5.f3990b = r0     // Catch: java.lang.Throwable -> L54
            r0.position(r1)     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r5.f3990b     // Catch: java.lang.Throwable -> L54
            java.nio.ByteOrder r1 = java.nio.ByteOrder.LITTLE_ENDIAN     // Catch: java.lang.Throwable -> L54
            r0.order(r1)     // Catch: java.lang.Throwable -> L54
            monitor-exit(r8)
            r1 = r7
            r3 = r9
            r4 = r10
            r6 = r11
            s.b r8 = r1.m5210c(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L4c
            l.c r9 = r1.f9567c
            r9.m3456a(r5)
            return r8
        L4c:
            r0 = move-exception
            r8 = r0
            l.c r9 = r1.f9567c
            r9.m3456a(r5)
            throw r8
        L54:
            r0 = move-exception
            r1 = r7
        L56:
            r9 = r0
        L57:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L59
            throw r9
        L59:
            r0 = move-exception
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: p205u.C3269a.mo2730a(java.lang.Object, int, int, h.h):j.d0");
    }

    @Override // p077h.InterfaceC1648j
    /* JADX INFO: renamed from: b */
    public final boolean mo2731b(Object obj, C1646h c1646h) {
        return !((Boolean) c1646h.m2729c(AbstractC3275g.f9606b)).booleanValue() && AbstractC2587b.m4056w(this.f9566b, (ByteBuffer) obj) == ImageHeaderParser$ImageType.GIF;
    }

    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(Unknown Source)
    	at java.base/java.util.HashMap.getNode(Unknown Source)
    	at java.base/java.util.HashMap.containsKey(Unknown Source)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    /* JADX INFO: renamed from: c */
    public final C3127b m5210c(ByteBuffer byteBuffer, int i10, int i11, C1597c c1597c, C1646h c1646h) {
        StringBuilder sb;
        int i12 = AbstractC0941j.f799b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            C1596b c1596bM2677b = c1597c.m2677b();
            C3127b c3127b = null;
            if (c1596bM2677b.f3980c > 0 && c1596bM2677b.f3979b == 0) {
                Bitmap.Config config = c1646h.m2729c(AbstractC3275g.f9605a) == EnumC1639a.f4172c ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int iM5209d = m5209d(c1596bM2677b, i10, i11);
                C3720f c3720f = this.f9568d;
                C2187d c2187d = this.f9569e;
                c3720f.getClass();
                C1598d c1598d = new C1598d(c2187d, c1596bM2677b, byteBuffer, iM5209d);
                c1598d.m2684c(config);
                c1598d.f4003k = (c1598d.f4003k + 1) % c1598d.f4004l.f3980c;
                Bitmap bitmapM2683b = c1598d.m2683b();
                if (bitmapM2683b == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                    }
                    return null;
                }
                c3127b = new C3127b(new C3270b(new C3094a(new C3274f(ComponentCallbacks2C1029b.m1249a(this.f9565a), c1598d, i10, i11, bitmapM2683b))), 1);
                if (!Log.isLoggable("BufferGifDecoder", 2)) {
                    return c3127b;
                }
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(AbstractC0941j.m1076a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return c3127b;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(AbstractC0941j.m1076a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return c3127b;
            }
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + AbstractC0941j.m1076a(jElapsedRealtimeNanos));
            }
            throw th;
        }
    }
}
