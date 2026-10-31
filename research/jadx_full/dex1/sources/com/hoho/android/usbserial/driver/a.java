package com.hoho.android.usbserial.driver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProlificSerialDriver$ProlificSerialPort f1586b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(ProlificSerialDriver$ProlificSerialPort prolificSerialDriver$ProlificSerialPort) {
        this.f1586b = prolificSerialDriver$ProlificSerialPort;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        ProlificSerialDriver$ProlificSerialPort.b(this.f1586b);
    }
}
