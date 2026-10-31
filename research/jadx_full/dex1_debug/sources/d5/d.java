package d5;

import com.google.protobuf.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum d implements z {
    UNKNOWN_TRIGGER(0),
    APP_LAUNCH(1),
    ON_FOREGROUND(2),
    UNRECOGNIZED(-1);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1765b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    d(int i9) {
        this.f1765b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.z
    public final int a() {
        if (this != UNRECOGNIZED) {
            return this.f1765b;
        }
        j1.i.k("Can't get the number of an unknown enum value.");
        return 0;
    }
}
