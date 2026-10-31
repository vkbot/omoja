package ai.onnxruntime.telemetry;

import androidx.annotation.NonNull;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface HttpClientRequest extends Runnable {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface Factory {

        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        public static class AndroidUrlConnection implements Factory {
            @Override // ai.onnxruntime.telemetry.HttpClientRequest.Factory
            public HttpClientRequest create(@NonNull HttpClient httpClient, String str, String str2, byte[] bArr, String str3, @NonNull Headers headers) {
                return new Request(httpClient, str, str2, bArr, str3, headers);
            }
        }

        HttpClientRequest create(@NonNull HttpClient httpClient, String str, String str2, byte[] bArr, String str3, @NonNull Headers headers);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class HeaderEntry {
        public final String key;
        public final String value;

        public HeaderEntry(String str, String str2) {
            this.key = str;
            this.value = str2;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class Headers implements Iterator<HeaderEntry> {
        private final byte[] buffer;
        private final int[] header_lengths;
        public final int length;
        private int current = 0;
        private int offset = 0;

        public Headers(int[] iArr, byte[] bArr) {
            this.length = iArr.length;
            this.header_lengths = iArr;
            this.buffer = bArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.current + 2 <= this.length;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public HeaderEntry next() {
            byte[] bArr = this.buffer;
            int i10 = this.offset;
            int i11 = this.header_lengths[this.current];
            Charset charset = StandardCharsets.UTF_8;
            String str = new String(bArr, i10, i11, charset);
            int i12 = this.offset;
            int[] iArr = this.header_lengths;
            int i13 = this.current;
            int i14 = i12 + iArr[i13];
            this.offset = i14;
            String str2 = new String(this.buffer, i14, iArr[i13 + 1], charset);
            int i15 = this.offset;
            int[] iArr2 = this.header_lengths;
            int i16 = this.current;
            this.offset = i15 + iArr2[i16 + 1];
            this.current = i16 + 2;
            return new HeaderEntry(str, str2);
        }
    }
}
