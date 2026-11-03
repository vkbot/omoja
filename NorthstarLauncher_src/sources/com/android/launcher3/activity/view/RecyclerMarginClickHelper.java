package com.android.launcher3.activity.view;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerMarginClickHelper {
    public static void setOnMarginClickListener(final RecyclerView recyclerView, final View.OnClickListener onClickListener) {
        if (recyclerView == null || onClickListener == null) {
            return;
        }
        final GestureDetector gestureDetector = new GestureDetector(recyclerView.getContext(), new GestureDetector.OnGestureListener() { // from class: com.android.launcher3.activity.view.RecyclerMarginClickHelper.1
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent e) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX, float velocityY) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent e) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent e) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent e) {
                View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 == null) {
                    return false;
                }
                onClickListener2.onClick(recyclerView);
                return false;
            }
        });
        recyclerView.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.launcher3.activity.view.RecyclerMarginClickHelper.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (view instanceof RecyclerView) {
                    return gestureDetector.onTouchEvent(motionEvent);
                }
                return false;
            }
        });
    }
}
