package androidx.constraintlayout.motion.widget;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionLayout$3 implements Runnable {
    final /* synthetic */ MotionLayout this$0;
    final /* synthetic */ View val$target;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public MotionLayout$3(MotionLayout motionLayout, View view) {
        this.this$0 = motionLayout;
        this.val$target = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.val$target.setNestedScrollingEnabled(true);
    }
}
