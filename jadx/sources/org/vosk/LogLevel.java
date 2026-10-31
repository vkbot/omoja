package org.vosk;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public enum LogLevel {
    WARNINGS(-1),
    INFO(0),
    DEBUG(1);

    private final int value;

    LogLevel(int i10) {
        this.value = i10;
    }

    public int getValue() {
        return this.value;
    }
}
