package androidx.core.text;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BidiFormatter$DirectionalityEstimator {
    private int charIndex;
    private final boolean isHtml;
    private char lastChar;
    private final int length;
    private final CharSequence text;
    private static final int DIR_TYPE_CACHE_SIZE = 1792;
    private static final byte[] DIR_TYPE_CACHE = new byte[DIR_TYPE_CACHE_SIZE];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        for (int i9 = 0; i9 < DIR_TYPE_CACHE_SIZE; i9++) {
            DIR_TYPE_CACHE[i9] = Character.getDirectionality(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BidiFormatter$DirectionalityEstimator(CharSequence charSequence, boolean z8) {
        this.text = charSequence;
        this.isHtml = z8;
        this.length = charSequence.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static byte getCachedDirectionality(char c) {
        return c < DIR_TYPE_CACHE_SIZE ? DIR_TYPE_CACHE[c] : Character.getDirectionality(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte skipEntityBackward() {
        char cCharAt;
        int i9 = this.charIndex;
        do {
            int i10 = this.charIndex;
            if (i10 <= 0) {
                break;
            }
            CharSequence charSequence = this.text;
            int i11 = i10 - 1;
            this.charIndex = i11;
            cCharAt = charSequence.charAt(i11);
            this.lastChar = cCharAt;
            if (cCharAt == '&') {
                return (byte) 12;
            }
        } while (cCharAt != ';');
        this.charIndex = i9;
        this.lastChar = ';';
        return (byte) 13;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte skipEntityForward() {
        char cCharAt;
        do {
            int i9 = this.charIndex;
            if (i9 >= this.length) {
                return (byte) 12;
            }
            CharSequence charSequence = this.text;
            this.charIndex = i9 + 1;
            cCharAt = charSequence.charAt(i9);
            this.lastChar = cCharAt;
        } while (cCharAt != ';');
        return (byte) 12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte skipTagBackward() {
        char cCharAt;
        int i9 = this.charIndex;
        while (true) {
            int i10 = this.charIndex;
            if (i10 <= 0) {
                break;
            }
            CharSequence charSequence = this.text;
            int i11 = i10 - 1;
            this.charIndex = i11;
            char cCharAt2 = charSequence.charAt(i11);
            this.lastChar = cCharAt2;
            if (cCharAt2 == '<') {
                return (byte) 12;
            }
            if (cCharAt2 == '>') {
                break;
            }
            if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                do {
                    int i12 = this.charIndex;
                    if (i12 <= 0) {
                        break;
                    }
                    CharSequence charSequence2 = this.text;
                    int i13 = i12 - 1;
                    this.charIndex = i13;
                    cCharAt = charSequence2.charAt(i13);
                    this.lastChar = cCharAt;
                } while (cCharAt != cCharAt2);
            }
        }
        this.charIndex = i9;
        this.lastChar = '>';
        return (byte) 13;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private byte skipTagForward() {
        char cCharAt;
        int i9 = this.charIndex;
        while (true) {
            int i10 = this.charIndex;
            if (i10 >= this.length) {
                this.charIndex = i9;
                this.lastChar = '<';
                return (byte) 13;
            }
            CharSequence charSequence = this.text;
            this.charIndex = i10 + 1;
            char cCharAt2 = charSequence.charAt(i10);
            this.lastChar = cCharAt2;
            if (cCharAt2 == '>') {
                return (byte) 12;
            }
            if (cCharAt2 == '\"' || cCharAt2 == '\'') {
                do {
                    int i11 = this.charIndex;
                    if (i11 >= this.length) {
                        break;
                    }
                    CharSequence charSequence2 = this.text;
                    this.charIndex = i11 + 1;
                    cCharAt = charSequence2.charAt(i11);
                    this.lastChar = cCharAt;
                } while (cCharAt != cCharAt2);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte dirTypeBackward() {
        char cCharAt = this.text.charAt(this.charIndex - 1);
        this.lastChar = cCharAt;
        if (Character.isLowSurrogate(cCharAt)) {
            int iCodePointBefore = Character.codePointBefore(this.text, this.charIndex);
            this.charIndex -= Character.charCount(iCodePointBefore);
            return Character.getDirectionality(iCodePointBefore);
        }
        this.charIndex--;
        byte cachedDirectionality = getCachedDirectionality(this.lastChar);
        if (!this.isHtml) {
            return cachedDirectionality;
        }
        char c = this.lastChar;
        if (c == '>') {
            return skipTagBackward();
        }
        return c == ';' ? skipEntityBackward() : cachedDirectionality;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte dirTypeForward() {
        char cCharAt = this.text.charAt(this.charIndex);
        this.lastChar = cCharAt;
        if (Character.isHighSurrogate(cCharAt)) {
            int iCodePointAt = Character.codePointAt(this.text, this.charIndex);
            this.charIndex = Character.charCount(iCodePointAt) + this.charIndex;
            return Character.getDirectionality(iCodePointAt);
        }
        this.charIndex++;
        byte cachedDirectionality = getCachedDirectionality(this.lastChar);
        if (!this.isHtml) {
            return cachedDirectionality;
        }
        char c = this.lastChar;
        if (c == '<') {
            return skipTagForward();
        }
        return c == '&' ? skipEntityForward() : cachedDirectionality;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEntryDir() {
        this.charIndex = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (this.charIndex < this.length && i9 == 0) {
            byte bDirTypeForward = dirTypeForward();
            if (bDirTypeForward != 0) {
                if (bDirTypeForward == 1 || bDirTypeForward == 2) {
                    if (i11 == 0) {
                        return 1;
                    }
                } else if (bDirTypeForward != 9) {
                    switch (bDirTypeForward) {
                        case 14:
                        case 15:
                            i11++;
                            i10 = -1;
                            continue;
                        case 16:
                        case 17:
                            i11++;
                            i10 = 1;
                            continue;
                        case 18:
                            i11--;
                            i10 = 0;
                            continue;
                    }
                }
            } else if (i11 == 0) {
                return -1;
            }
            i9 = i11;
        }
        if (i9 == 0) {
            return 0;
        }
        if (i10 != 0) {
            return i10;
        }
        while (this.charIndex > 0) {
            switch (dirTypeBackward()) {
                case 14:
                case 15:
                    if (i9 == i11) {
                        return -1;
                    }
                    break;
                case 16:
                case 17:
                    if (i9 == i11) {
                        return 1;
                    }
                    break;
                case 18:
                    i11++;
                    continue;
                default:
                    continue;
            }
            i11--;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getExitDir() {
        this.charIndex = this.length;
        int i9 = 0;
        while (true) {
            int i10 = i9;
            while (this.charIndex > 0) {
                byte bDirTypeBackward = dirTypeBackward();
                if (bDirTypeBackward == 0) {
                    if (i9 == 0) {
                        return -1;
                    }
                    if (i10 == 0) {
                    }
                } else if (bDirTypeBackward == 1 || bDirTypeBackward == 2) {
                    if (i9 == 0) {
                        return 1;
                    }
                    if (i10 == 0) {
                    }
                } else if (bDirTypeBackward != 9) {
                    switch (bDirTypeBackward) {
                        case 14:
                        case 15:
                            if (i10 == i9) {
                                return -1;
                            }
                            i9--;
                            break;
                        case 16:
                        case 17:
                            if (i10 == i9) {
                                return 1;
                            }
                            i9--;
                            break;
                        case 18:
                            i9++;
                            break;
                        default:
                            if (i10 != 0) {
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }
}
