package ai.onnxruntime.telemetry;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class HttpClientRequest$Headers implements Iterator<HttpClientRequest$HeaderEntry> {
    private final byte[] buffer;
    private final int[] header_lengths;
    public final int length;
    private int current = 0;
    private int offset = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HttpClientRequest$Headers(int[] iArr, byte[] bArr) {
        this.length = iArr.length;
        this.header_lengths = iArr;
        this.buffer = bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.current + 2 <= this.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public HttpClientRequest$HeaderEntry next() {
        byte[] bArr = this.buffer;
        int i9 = this.offset;
        int i10 = this.header_lengths[this.current];
        Charset charset = StandardCharsets.UTF_8;
        String str = new String(bArr, i9, i10, charset);
        int i11 = this.offset;
        int[] iArr = this.header_lengths;
        int i12 = this.current;
        int i13 = i11 + iArr[i12];
        this.offset = i13;
        String str2 = new String(this.buffer, i13, iArr[i12 + 1], charset);
        int i14 = this.offset;
        int[] iArr2 = this.header_lengths;
        int i15 = this.current;
        this.offset = i14 + iArr2[i15 + 1];
        this.current = i15 + 2;
        return new HttpClientRequest$HeaderEntry(str, str2);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ HttpClientRequest$HeaderEntry next() {
        return next();
    }
}
