package org.vosk.android;

import java.io.IOException;
import org.vosk.Model;

/* JADX INFO: renamed from: org.vosk.android.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class RunnableC2940a implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8157b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8158c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f8159d;

    public /* synthetic */ RunnableC2940a(int i10, Object obj, Object obj2) {
        this.f8157b = i10;
        this.f8159d = obj;
        this.f8158c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8157b) {
            case 0:
                ((SpeechService.RecognizerThread) this.f8159d).lambda$run$0((IOException) this.f8158c);
                break;
            case 1:
                ((SpeechStreamService.RecognizerThread) this.f8159d).lambda$run$2((IOException) this.f8158c);
                break;
            case 2:
                ((StorageService.Callback) this.f8159d).onComplete((Model) this.f8158c);
                break;
            default:
                ((StorageService.Callback) this.f8159d).onComplete((IOException) this.f8158c);
                break;
        }
    }
}
