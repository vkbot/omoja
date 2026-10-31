package com.bumptech.glide.load;

import p077h.AbstractC1641c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public enum ImageHeaderParser$ImageType {
    GIF(true),
    JPEG(false),
    RAW(false),
    PNG_A(true),
    PNG(false),
    WEBP_A(true),
    WEBP(false),
    ANIMATED_WEBP(true),
    AVIF(true),
    ANIMATED_AVIF(true),
    UNKNOWN(false);


    /* JADX INFO: renamed from: b */
    public final boolean f1120b;

    ImageHeaderParser$ImageType(boolean z9) {
        this.f1120b = z9;
    }

    public boolean hasAlpha() {
        return this.f1120b;
    }

    public boolean isWebp() {
        int i10 = AbstractC1641c.f4175a[ordinal()];
        return i10 == 1 || i10 == 2 || i10 == 3;
    }
}
