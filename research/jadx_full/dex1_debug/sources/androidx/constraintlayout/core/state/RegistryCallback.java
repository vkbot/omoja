package androidx.constraintlayout.core.state;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface RegistryCallback {
    String currentLayoutInformation();

    String currentMotionScene();

    long getLastModified();

    void onDimensions(int i9, int i10);

    void onNewMotionScene(String str);

    void onProgress(float f8);

    void setDrawDebug(int i9);

    void setLayoutInformationMode(int i9);
}
