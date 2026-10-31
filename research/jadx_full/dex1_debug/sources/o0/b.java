package o0;

import android.content.SharedPreferences;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View$OnTouchListener;
import com.example.navistart.MyA11yService;
import d2.h;
import e0.g;
import e0.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements View$OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f4014b;
    public final /* synthetic */ float[] c;
    public final /* synthetic */ float[] d;
    public final /* synthetic */ float[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ VelocityTracker[] f4015f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ d f4016g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ f f4017h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(h hVar, float[] fArr, float[] fArr2, float[] fArr3, VelocityTracker[] velocityTrackerArr, d dVar, f fVar) {
        this.f4014b = hVar;
        this.c = fArr;
        this.d = fArr2;
        this.e = fArr3;
        this.f4015f = velocityTrackerArr;
        this.f4016g = dVar;
        this.f4017h = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        float[] fArr = this.c;
        float[] fArr2 = this.d;
        float[] fArr3 = this.e;
        VelocityTracker[] velocityTrackerArr = this.f4015f;
        d dVar = this.f4016g;
        if (actionMasked == 0) {
            fArr[0] = motionEvent.getRawX();
            fArr2[0] = motionEvent.getRawY();
            fArr3[0] = 0.0f;
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            velocityTrackerArr[0] = velocityTrackerObtain;
            velocityTrackerObtain.addMovement(motionEvent);
            dVar.d(motionEvent.getX(), motionEvent.getY(), 0.0f, 0.0f, 0.0f);
            return true;
        }
        if (actionMasked == 1) {
            VelocityTracker velocityTracker = velocityTrackerArr[0];
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
                velocityTrackerArr[0].computeCurrentVelocity(1000);
                float rawX = motionEvent.getRawX() - fArr[0];
                float rawY = motionEvent.getRawY() - fArr2[0];
                VelocityTracker velocityTracker2 = velocityTrackerArr[0];
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    velocityTrackerArr[0] = null;
                }
                if (fArr3[0] > 90.0f) {
                    if (Math.abs(rawX) > Math.abs(rawY)) {
                        int i9 = (rawX > 0.0f ? 1 : (rawX == 0.0f ? 0 : -1));
                        c[] cVarArr = c.f4018b;
                    } else {
                        int i10 = (rawY > 0.0f ? 1 : (rawY == 0.0f ? 0 : -1));
                        c[] cVarArr2 = c.f4018b;
                    }
                    h hVar = this.f4014b;
                    SharedPreferences sharedPreferences = ((e) hVar.c).f4033a;
                    StringBuilder sb = new StringBuilder();
                    sb.append(m.h(new byte[]{-12, -40, 19, -46, -95, -116, 107}, new byte[]{-107, -69, 103, -69, -50, -30, 52, -51}));
                    f fVar = this.f4017h;
                    sb.append(fVar.name());
                    sharedPreferences.getInt(sb.toString(), 0);
                    if (((g) hVar.d) != null) {
                        MyA11yService myA11yService = MyA11yService.c;
                        try {
                            h0.b.a();
                            h0.b.a();
                            h0.b.f().k(m.h(new byte[]{97, 56, 30, 103, 35, 46, -92, 46, 73, 51, 8, 94, 55, 50, -96, 19, 67, 47}, new byte[]{38, 93, 109, 19, 86, 92, -63, 116}) + fVar.name());
                        } catch (Exception unused) {
                        }
                    }
                }
                dVar.c();
            }
        } else if (actionMasked == 2) {
            VelocityTracker velocityTracker3 = velocityTrackerArr[0];
            if (velocityTracker3 != null) {
                velocityTracker3.addMovement(motionEvent);
                float rawX2 = motionEvent.getRawX() - fArr[0];
                float rawY2 = motionEvent.getRawY() - fArr2[0];
                float fSqrt = (float) Math.sqrt((rawY2 * rawY2) + (rawX2 * rawX2));
                fArr3[0] = fSqrt;
                float fMin = Math.min(fSqrt, 500.0f);
                fArr3[0] = fMin;
                dVar.d(motionEvent.getX(), motionEvent.getY(), rawX2, rawY2, Math.min(1.0f, fMin / 500.0f));
                return true;
            }
        } else if (actionMasked == 3) {
            VelocityTracker velocityTracker4 = velocityTrackerArr[0];
            if (velocityTracker4 != null) {
                velocityTracker4.recycle();
                velocityTrackerArr[0] = null;
            }
            dVar.c();
            return true;
        }
        return true;
    }
}
