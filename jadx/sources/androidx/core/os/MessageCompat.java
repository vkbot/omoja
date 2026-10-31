package androidx.core.os;

import android.os.Message;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class MessageCompat {
    private static boolean sTryIsAsynchronous = true;
    private static boolean sTrySetAsynchronous = true;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(22)
    public static class Api22Impl {
        private Api22Impl() {
        }

        @DoNotInline
        public static boolean isAsynchronous(Message message) {
            return message.isAsynchronous();
        }

        @DoNotInline
        public static void setAsynchronous(Message message, boolean z9) {
            message.setAsynchronous(z9);
        }
    }

    private MessageCompat() {
    }

    public static boolean isAsynchronous(@NonNull Message message) {
        return Api22Impl.isAsynchronous(message);
    }

    public static void setAsynchronous(@NonNull Message message, boolean z9) {
        Api22Impl.setAsynchronous(message, z9);
    }
}
