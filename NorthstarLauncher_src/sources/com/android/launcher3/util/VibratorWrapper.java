package com.android.launcher3.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;

/* JADX INFO: loaded from: classes.dex */
public class VibratorWrapper {
    public static final VibrationEffect EFFECT_CLICK;
    public static final MainThreadInitializedObject<VibratorWrapper> INSTANCE = new MainThreadInitializedObject<>(new MainThreadInitializedObject.ObjectProvider() { // from class: com.android.launcher3.util.VibratorWrapper$$ExternalSyntheticLambda1
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new VibratorWrapper(context);
        }
    });
    public static final VibrationEffect OVERVIEW_HAPTIC;
    private final boolean mHasVibrator;
    private boolean mIsHapticFeedbackEnabled;
    private final Vibrator mVibrator;

    static {
        VibrationEffect vibrationEffectCreatePredefined = VibrationEffect.createPredefined(0);
        EFFECT_CLICK = vibrationEffectCreatePredefined;
        OVERVIEW_HAPTIC = vibrationEffectCreatePredefined;
    }

    public VibratorWrapper(Context context) {
        Vibrator vibrator = (Vibrator) context.getSystemService(Vibrator.class);
        this.mVibrator = vibrator;
        boolean zHasVibrator = vibrator.hasVibrator();
        this.mHasVibrator = zHasVibrator;
        if (!zHasVibrator) {
            this.mIsHapticFeedbackEnabled = false;
            return;
        }
        final ContentResolver contentResolver = context.getContentResolver();
        this.mIsHapticFeedbackEnabled = isHapticFeedbackEnabled(contentResolver);
        contentResolver.registerContentObserver(Settings.System.getUriFor("haptic_feedback_enabled"), false, new ContentObserver(Executors.MAIN_EXECUTOR.getHandler()) { // from class: com.android.launcher3.util.VibratorWrapper.1
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                VibratorWrapper vibratorWrapper = VibratorWrapper.this;
                vibratorWrapper.mIsHapticFeedbackEnabled = vibratorWrapper.isHapticFeedbackEnabled(contentResolver);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isHapticFeedbackEnabled(ContentResolver resolver) {
        return Settings.System.getInt(resolver, "haptic_feedback_enabled", 0) == 1;
    }

    /* JADX INFO: renamed from: lambda$vibrate$0$com-android-launcher3-util-VibratorWrapper, reason: not valid java name */
    /* synthetic */ void m168lambda$vibrate$0$comandroidlauncher3utilVibratorWrapper(VibrationEffect vibrationEffect) {
        this.mVibrator.vibrate(vibrationEffect);
    }

    public void vibrate(final VibrationEffect vibrationEffect) {
        if (this.mHasVibrator && this.mIsHapticFeedbackEnabled) {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.util.VibratorWrapper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m168lambda$vibrate$0$comandroidlauncher3utilVibratorWrapper(vibrationEffect);
                }
            });
        }
    }
}
