package u;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap$Config;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import h.j;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements j {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final z3.f f5419f = new z3.f(17);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final l.c f5420g = new l.c(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f5422b;
    public final l.d e;
    public final z3.f d = f5419f;
    public final l.c c = f5420g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(Context context, ArrayList arrayList, k.b bVar, k.g gVar) {
        this.f5421a = context.getApplicationContext();
        this.f5422b = arrayList;
        this.e = new l.d(18, bVar, gVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int d(g.b bVar, int i9, int i10) {
        int iMin = Math.min(bVar.f2308g / i10, bVar.f2307f / i9);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable("BufferGifDecoder", 2) && iMax > 1) {
            StringBuilder sbV = ai.onnxruntime.a.v("Downsampling GIF, sampleSize: ", iMax, i9, ", target dimens: [", "x");
            sbV.append(i10);
            sbV.append("], actual dimens: [");
            sbV.append(bVar.f2307f);
            sbV.append("x");
            sbV.append(bVar.f2308g);
            sbV.append("]");
            Log.v("BufferGifDecoder", sbV.toString());
        }
        return iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Duplicate block (B:25:0x0059) to fix multi-entry loop: BACK_EDGE: B:25:0x0059 -> B:22:0x0056 */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:25:0x0059
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // h.j
    public final j.d0 a(java.lang.Object r8, int r9, int r10, h.h r11) {
        /*
            r7 = this;
            r2 = r8
            java.nio.ByteBuffer r2 = (java.nio.ByteBuffer) r2
            l.c r8 = r7.c
            monitor-enter(r8)
            java.util.ArrayDeque r0 = r8.f3244a     // Catch: java.lang.Throwable -> L54
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L54
            g.c r0 = (g.c) r0     // Catch: java.lang.Throwable -> L54
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
            r5.f2314b = r0     // Catch: java.lang.Throwable -> L54
            byte[] r0 = r5.f2313a     // Catch: java.lang.Throwable -> L54
            r1 = 0
            java.util.Arrays.fill(r0, r1)     // Catch: java.lang.Throwable -> L54
            g.b r0 = new g.b     // Catch: java.lang.Throwable -> L54
            r0.<init>()     // Catch: java.lang.Throwable -> L54
            r5.c = r0     // Catch: java.lang.Throwable -> L54
            r5.d = r1     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r2.asReadOnlyBuffer()     // Catch: java.lang.Throwable -> L54
            r5.f2314b = r0     // Catch: java.lang.Throwable -> L54
            r0.position(r1)     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r5.f2314b     // Catch: java.lang.Throwable -> L54
            java.nio.ByteOrder r1 = java.nio.ByteOrder.LITTLE_ENDIAN     // Catch: java.lang.Throwable -> L54
            r0.order(r1)     // Catch: java.lang.Throwable -> L54
            monitor-exit(r8)
            r1 = r7
            r3 = r9
            r4 = r10
            r6 = r11
            s.b r8 = r1.c(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L4c
            l.c r9 = r1.c
            r9.a(r5)
            return r8
        L4c:
            r0 = move-exception
            r8 = r0
            l.c r9 = r1.c
            r9.a(r5)
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
        throw new UnsupportedOperationException("Method not decompiled: u.a.a(java.lang.Object, int, int, h.h):j.d0");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.j
    public final boolean b(Object obj, h.h hVar) {
        return !((Boolean) hVar.c(g.f5450b)).booleanValue() && o4.b.w(this.f5422b, (ByteBuffer) obj) == ImageHeaderParser$ImageType.GIF;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
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
    public final s.b c(ByteBuffer byteBuffer, int i9, int i10, g.c cVar, h.h hVar) {
        StringBuilder sb;
        int i11 = c0.j.f402b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            g.b bVarB = cVar.b();
            s.b bVar = null;
            if (bVarB.c > 0 && bVarB.f2306b == 0) {
                Bitmap$Config bitmap$Config = hVar.c(g.f5449a) == h.a.c ? Bitmap$Config.RGB_565 : Bitmap$Config.ARGB_8888;
                int iD = d(bVarB, i9, i10);
                z3.f fVar = this.d;
                l.d dVar = this.e;
                fVar.getClass();
                g.d dVar2 = new g.d(dVar, bVarB, byteBuffer, iD);
                dVar2.c(bitmap$Config);
                dVar2.f2322k = (dVar2.f2322k + 1) % dVar2.f2323l.c;
                Bitmap bitmapB = dVar2.b();
                if (bitmapB == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                    }
                    return null;
                }
                bVar = new s.b(new b(new r3.a(new f(com.bumptech.glide.b.a(this.f5421a), dVar2, i9, i10, bitmapB))), 1);
                if (!Log.isLoggable("BufferGifDecoder", 2)) {
                    return bVar;
                }
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(c0.j.a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return bVar;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(c0.j.a(jElapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return bVar;
            }
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + c0.j.a(jElapsedRealtimeNanos));
            }
            throw th;
        }
    }
}
