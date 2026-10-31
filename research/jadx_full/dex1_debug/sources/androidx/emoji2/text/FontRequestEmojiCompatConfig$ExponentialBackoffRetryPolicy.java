package androidx.emoji2.text;

import android.os.SystemClock;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy extends FontRequestEmojiCompatConfig$RetryPolicy {
    private long mRetryOrigin;
    private final long mTotalMs;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontRequestEmojiCompatConfig$ExponentialBackoffRetryPolicy(long j9) {
        this.mTotalMs = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.FontRequestEmojiCompatConfig$RetryPolicy
    public long getRetryDelay() {
        if (this.mRetryOrigin == 0) {
            this.mRetryOrigin = SystemClock.uptimeMillis();
            return 0L;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.mRetryOrigin;
        if (jUptimeMillis > this.mTotalMs) {
            return -1L;
        }
        return Math.min(Math.max(jUptimeMillis, 1000L), this.mTotalMs - jUptimeMillis);
    }
}
