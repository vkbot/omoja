package androidx.constraintlayout.core.state;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface RegistryCallback {
    String currentLayoutInformation();

    String currentMotionScene();

    long getLastModified();

    void onDimensions(int i10, int i11);

    void onNewMotionScene(String str);

    void onProgress(float f8);

    void setDrawDebug(int i10);

    void setLayoutInformationMode(int i10);
}
