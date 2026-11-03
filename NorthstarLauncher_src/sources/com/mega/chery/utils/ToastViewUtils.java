package com.mega.chery.utils;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.Layout;
import android.text.StaticLayout;
import android.util.ArraySet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.mega.chery.R;
import java.util.Iterator;
import java.util.Objects;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class ToastViewUtils {
    public static final String TAG = "ToastViewUtils";
    public static ArraySet<View> sToastViewList = new ArraySet<>();

    public static ToastViewPresenter makeText(Context context, int i, long j) {
        return makeText(context, context.getResources().getText(i).toString(), j);
    }

    public static ToastViewPresenter makeText(Context context, String str, long j) {
        return new ToastViewPresenter(context, str, j);
    }

    public static ToastViewPresenter makeText(Context context, String str, long j, boolean z) {
        return new ToastViewPresenter(context, str, j, z);
    }

    public static ToastViewPresenter makeCenterText(Context context, String str, long j) {
        return new ToastViewPresenter(context, str, j);
    }

    public static boolean hideByTag(Context context, Object obj) {
        if (sToastViewList.isEmpty()) {
            return false;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        for (View view : sToastViewList) {
            if (obj == view.getTag()) {
                if (view.getParent() == null) {
                    return true;
                }
                sToastViewList.remove(view);
                windowManager.removeView(view);
                return true;
            }
        }
        return false;
    }

    public static boolean isShow(Object obj) {
        Iterator<View> it = sToastViewList.iterator();
        while (it.hasNext()) {
            if (Objects.equals(obj, it.next().getTag())) {
                return true;
            }
        }
        return false;
    }

    public static class ToastViewPresenter {
        protected int layoutId;
        private CallBack mCallBack;
        private Runnable mCloseTask;
        private final Context mContext;
        private final long mDuration;
        private Handler mH;
        private boolean mIsFullScreenToast;
        protected WindowManager.LayoutParams mParams;
        private Object mTag;
        private final String mText;
        private final View mViewCache;
        private final WindowManager mWindowManager;

        public interface CallBack {
            void onToastHide();

            void onToastShown();
        }

        public int getLayoutId() {
            return this.layoutId;
        }

        public ToastViewPresenter setCallBack(CallBack callBack) {
            this.mCallBack = callBack;
            return this;
        }

        public void setLayoutId(int i) {
            this.layoutId = i;
        }

        public ToastViewPresenter setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public ToastViewPresenter setWindowParams(WindowManager.LayoutParams layoutParams) {
            this.mParams = layoutParams;
            return this;
        }

        public ToastViewPresenter(Context context, String str, long j) {
            this(context, str, j, false);
        }

        public ToastViewPresenter(Context context, String str, long j, boolean z) {
            this.layoutId = CarConfigUtils.isMilan() ? R.layout.view_toast_t29 : R.layout.view_toast;
            this.mIsFullScreenToast = false;
            Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext;
            this.mIsFullScreenToast = z;
            if (z) {
                this.layoutId = R.layout.view_full_width_toast;
            }
            this.mViewCache = LayoutInflater.from(applicationContext).inflate(getLayoutId(), (ViewGroup) null);
            this.mWindowManager = (WindowManager) applicationContext.getSystemService("window");
            this.mText = str;
            this.mDuration = j;
        }

        public void show() {
            if (!ToastViewUtils.sToastViewList.isEmpty()) {
                hideAllToastViews();
            }
            View view = this.mViewCache;
            Object obj = this.mTag;
            if (obj == null) {
                obj = this.mText;
            }
            view.setTag(obj);
            this.mWindowManager.addView(this.mViewCache, initWindowParams(this.mContext));
            ToastViewUtils.sToastViewList.add(this.mViewCache);
            TextView textView = (TextView) this.mViewCache.findViewById(R.id.tv_tip);
            textView.setText(this.mText);
            if (!this.mIsFullScreenToast) {
                setTextViewWidth(textView, this.mText);
            }
            startTimer(this.mDuration);
            CallBack callBack = this.mCallBack;
            if (callBack != null) {
                callBack.onToastShown();
            }
        }

        private void hideAllToastViews() {
            Runnable runnable;
            Handler handler = this.mH;
            if (handler != null && (runnable = this.mCloseTask) != null) {
                handler.removeCallbacks(runnable);
            }
            for (View view : ToastViewUtils.sToastViewList) {
                if (view.getParent() != null) {
                    this.mWindowManager.removeView(view);
                }
            }
            ToastViewUtils.sToastViewList.clear();
        }

        private void setTextViewWidth(TextView textView, String str) {
            int iCalculateTextViewHeightByWidth;
            int iDp2px = 1912 - ToastViewUtils.dp2px(textView.getContext(), 160.0f);
            StaticLayout staticLayout = new StaticLayout(str, textView.getPaint(), Integer.MAX_VALUE, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            float f = 0.0f;
            for (int i = 0; i < staticLayout.getLineCount(); i++) {
                float lineWidth = staticLayout.getLineWidth(i);
                if (lineWidth > f) {
                    f = lineWidth;
                }
            }
            float f2 = iDp2px;
            if (f > f2) {
                iCalculateTextViewHeightByWidth = calculateTextViewHeightByWidth(textView, iDp2px);
                f = f2;
            } else {
                iCalculateTextViewHeightByWidth = -2;
            }
            textView.setLayoutParams(new LinearLayout.LayoutParams(((int) f) + 1, iCalculateTextViewHeightByWidth));
        }

        private int calculateTextViewHeightByWidth(TextView textView, int i) {
            textView.measure(View.MeasureSpec.makeMeasureSpec(i, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(0, 0));
            return textView.getMeasuredHeight();
        }

        public WindowManager.LayoutParams initWindowParams(Context context) {
            if (this.mParams == null) {
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2026, 520, -3);
                this.mParams = layoutParams;
                layoutParams.packageName = context.getPackageName();
                this.mParams.windowAnimations = R.style.animation_toast_view;
                this.mParams.gravity = 49;
                this.mParams.y = ToastViewUtils.dp2px(context, 96.0f);
                this.mParams.setFitInsetsTypes(0);
            }
            return this.mParams;
        }

        private void startTimer(long j) {
            if (j == -1) {
                MLog.d(ToastViewUtils.TAG, "duration == -1");
                return;
            }
            if (this.mH == null) {
                this.mH = new Handler(Looper.getMainLooper());
            }
            Runnable runnable = this.mCloseTask;
            if (runnable != null) {
                this.mH.removeCallbacks(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: com.mega.chery.utils.ToastViewUtils.ToastViewPresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    ToastViewPresenter.this.hide();
                }
            };
            this.mCloseTask = runnable2;
            this.mH.postDelayed(runnable2, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hide() {
            try {
                if (this.mViewCache.getParent() != null) {
                    ToastViewUtils.sToastViewList.remove(this.mViewCache);
                    this.mWindowManager.removeView(this.mViewCache);
                    CallBack callBack = this.mCallBack;
                    if (callBack != null) {
                        callBack.onToastHide();
                    }
                }
            } catch (IllegalStateException e) {
                MLog.d(e.getMessage());
            }
        }
    }

    public static class CenterToastPresenter extends ToastViewPresenter {
        public CenterToastPresenter(Context context, String str, long j) {
            super(context, str, j);
        }

        @Override // com.mega.chery.utils.ToastViewUtils.ToastViewPresenter
        public int getLayoutId() {
            return R.layout.gc_center_toast;
        }

        @Override // com.mega.chery.utils.ToastViewUtils.ToastViewPresenter
        public WindowManager.LayoutParams initWindowParams(Context context) {
            if (this.mParams == null) {
                this.mParams = new WindowManager.LayoutParams(-2, -2, 2026, 520, -3);
                this.mParams.packageName = context.getPackageName();
                this.mParams.windowAnimations = R.style.animation_center_toast;
                this.mParams.gravity = 17;
                this.mParams.setFitInsetsTypes(0);
            }
            return this.mParams;
        }
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void setFullScreen(View view) {
        view.setSystemUiVisibility(5894);
    }

    public static void release(Context context) {
        if (sToastViewList.isEmpty()) {
            return;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        for (View view : sToastViewList) {
            if (view.getParent() != null) {
                windowManager.removeView(view);
                MLog.d(TAG, "windowManager.removeView(view)");
            }
        }
        sToastViewList.clear();
        MLog.d(TAG, "sToastViewList.clear()");
    }
}
