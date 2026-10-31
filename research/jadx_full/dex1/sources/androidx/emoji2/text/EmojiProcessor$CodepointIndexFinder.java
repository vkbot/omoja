package androidx.emoji2.text;

import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public final class EmojiProcessor$CodepointIndexFinder {
    private static final int INVALID_INDEX = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private EmojiProcessor$CodepointIndexFinder() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int findIndexBackward(CharSequence charSequence, int i9, int i10) {
        int length = charSequence.length();
        if (i9 < 0 || length < i9 || i10 < 0) {
            return -1;
        }
        while (true) {
            boolean z8 = false;
            while (i10 != 0) {
                i9--;
                if (i9 < 0) {
                    return z8 ? -1 : 0;
                }
                char cCharAt = charSequence.charAt(i9);
                if (z8) {
                    if (!Character.isHighSurrogate(cCharAt)) {
                        return -1;
                    }
                    i10--;
                } else if (!Character.isSurrogate(cCharAt)) {
                    i10--;
                } else {
                    if (Character.isHighSurrogate(cCharAt)) {
                        return -1;
                    }
                    z8 = true;
                }
            }
            return i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int findIndexForward(CharSequence charSequence, int i9, int i10) {
        int length = charSequence.length();
        if (i9 < 0 || length < i9 || i10 < 0) {
            return -1;
        }
        while (true) {
            boolean z8 = false;
            while (i10 != 0) {
                if (i9 >= length) {
                    if (z8) {
                        return -1;
                    }
                    return length;
                }
                char cCharAt = charSequence.charAt(i9);
                if (z8) {
                    if (!Character.isLowSurrogate(cCharAt)) {
                        return -1;
                    }
                    i10--;
                    i9++;
                } else if (!Character.isSurrogate(cCharAt)) {
                    i10--;
                    i9++;
                } else {
                    if (Character.isLowSurrogate(cCharAt)) {
                        return -1;
                    }
                    i9++;
                    z8 = true;
                }
            }
            return i9;
        }
    }
}
