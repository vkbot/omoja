package androidx.recyclerview.widget;

import android.util.SparseIntArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class GridLayoutManager$SpanSizeLookup {
    final SparseIntArray mSpanIndexCache = new SparseIntArray();
    final SparseIntArray mSpanGroupIndexCache = new SparseIntArray();
    private boolean mCacheSpanIndices = false;
    private boolean mCacheSpanGroupIndices = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int findFirstKeyLessThan(SparseIntArray sparseIntArray, int i9) {
        int size = sparseIntArray.size() - 1;
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            if (sparseIntArray.keyAt(i11) < i9) {
                i10 = i11 + 1;
            } else {
                size = i11 - 1;
            }
        }
        int i12 = i10 - 1;
        if (i12 < 0 || i12 >= sparseIntArray.size()) {
            return -1;
        }
        return sparseIntArray.keyAt(i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCachedSpanGroupIndex(int i9, int i10) {
        if (!this.mCacheSpanGroupIndices) {
            return getSpanGroupIndex(i9, i10);
        }
        int i11 = this.mSpanGroupIndexCache.get(i9, -1);
        if (i11 != -1) {
            return i11;
        }
        int spanGroupIndex = getSpanGroupIndex(i9, i10);
        this.mSpanGroupIndexCache.put(i9, spanGroupIndex);
        return spanGroupIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCachedSpanIndex(int i9, int i10) {
        if (!this.mCacheSpanIndices) {
            return getSpanIndex(i9, i10);
        }
        int i11 = this.mSpanIndexCache.get(i9, -1);
        if (i11 != -1) {
            return i11;
        }
        int spanIndex = getSpanIndex(i9, i10);
        this.mSpanIndexCache.put(i9, spanIndex);
        return spanIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpanGroupIndex(int i9, int i10) {
        int spanSize;
        int i11;
        int i12;
        int iFindFirstKeyLessThan;
        if (!this.mCacheSpanGroupIndices || (iFindFirstKeyLessThan = findFirstKeyLessThan(this.mSpanGroupIndexCache, i9)) == -1) {
            spanSize = 0;
            i11 = 0;
            i12 = 0;
        } else {
            i11 = this.mSpanGroupIndexCache.get(iFindFirstKeyLessThan);
            i12 = iFindFirstKeyLessThan + 1;
            spanSize = getSpanSize(iFindFirstKeyLessThan) + getCachedSpanIndex(iFindFirstKeyLessThan, i10);
            if (spanSize == i10) {
                i11++;
                spanSize = 0;
            }
        }
        int spanSize2 = getSpanSize(i9);
        while (i12 < i9) {
            int spanSize3 = getSpanSize(i12);
            spanSize += spanSize3;
            if (spanSize == i10) {
                i11++;
                spanSize = 0;
            } else if (spanSize > i10) {
                i11++;
                spanSize = spanSize3;
            }
            i12++;
        }
        return spanSize + spanSize2 > i10 ? i11 + 1 : i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:14:0x002b  */
    /* JADX WARN: Code duplicated, block: B:15:0x002d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:17:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:17:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:17:0x0030). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public int getSpanIndex(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.getSpanSize(r6)
            r1 = 0
            if (r0 != r7) goto L8
            return r1
        L8:
            boolean r2 = r5.mCacheSpanIndices
            if (r2 == 0) goto L20
            android.util.SparseIntArray r2 = r5.mSpanIndexCache
            int r2 = findFirstKeyLessThan(r2, r6)
            if (r2 < 0) goto L20
            android.util.SparseIntArray r3 = r5.mSpanIndexCache
            int r3 = r3.get(r2)
            int r4 = r5.getSpanSize(r2)
            int r4 = r4 + r3
            goto L30
        L20:
            r2 = r1
            r4 = r2
        L22:
            if (r2 >= r6) goto L33
            int r3 = r5.getSpanSize(r2)
            int r4 = r4 + r3
            if (r4 != r7) goto L2d
            r4 = r1
            goto L30
        L2d:
            if (r4 <= r7) goto L30
            r4 = r3
        L30:
            int r2 = r2 + 1
            goto L22
        L33:
            int r0 = r0 + r4
            if (r0 > r7) goto L37
            return r4
        L37:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager$SpanSizeLookup.getSpanIndex(int, int):int");
    }

    public abstract int getSpanSize(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateSpanGroupIndexCache() {
        this.mSpanGroupIndexCache.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateSpanIndexCache() {
        this.mSpanIndexCache.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSpanGroupIndexCacheEnabled() {
        return this.mCacheSpanGroupIndices;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSpanIndexCacheEnabled() {
        return this.mCacheSpanIndices;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpanGroupIndexCacheEnabled(boolean z8) {
        if (!z8) {
            this.mSpanGroupIndexCache.clear();
        }
        this.mCacheSpanGroupIndices = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpanIndexCacheEnabled(boolean z8) {
        if (!z8) {
            this.mSpanGroupIndexCache.clear();
        }
        this.mCacheSpanIndices = z8;
    }
}
