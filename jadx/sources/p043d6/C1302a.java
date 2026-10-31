package p043d6;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Handler;
import p032c7.C1005i;
import p032c7.RunnableC1001e;

/* JADX INFO: renamed from: d6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1302a implements SensorEventListener {

    /* JADX INFO: renamed from: a */
    public C1005i f3108a;

    /* JADX INFO: renamed from: b */
    public Handler f3109b;

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        Handler handler = this.f3109b;
        boolean z9 = false;
        float f8 = sensorEvent.values[0];
        if (f8 <= 45.0f) {
            handler.post(new RunnableC1001e(this, true, 1));
        } else if (f8 >= 450.0f) {
            handler.post(new RunnableC1001e(this, z9, 1));
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i10) {
    }
}
