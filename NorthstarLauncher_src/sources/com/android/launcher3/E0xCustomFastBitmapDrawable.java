package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.google.android.material.timepicker.TimeModel;
import com.mega.sdk.linkmanager.MegaLinkManager;
import java.util.Calendar;
import java.util.Objects;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class E0xCustomFastBitmapDrawable extends FastBitmapDrawable {
    private Context mContext;
    private ItemInfoWithIcon mItemInfo;

    public E0xCustomFastBitmapDrawable(Context context, ItemInfoWithIcon info) {
        super(info.bitmap.icon, info.bitmap.color);
        this.mContext = context;
        this.mItemInfo = info;
        MLog.i("E0xCustomFastBitmapDrawable " + info.toString());
    }

    protected E0xCustomFastBitmapDrawable(Bitmap b, int iconColor) {
        super(b, iconColor, false);
    }

    protected E0xCustomFastBitmapDrawable(Bitmap b, int iconColor, boolean isDisabled) {
        super(b, iconColor, isDisabled);
    }

    public static boolean isCustomDrawIcon(ItemInfo info) {
        String packageName = info == null ? "" : info.getTargetComponent().getPackageName();
        return packageName.equals("com.mega.carplay") || packageName.equals("com.mega.androidauto");
    }

    @Override // com.android.launcher3.FastBitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ItemInfoWithIcon itemInfoWithIcon = this.mItemInfo;
        if (itemInfoWithIcon == null) {
            drawDefaultBitmap(canvas);
            return;
        }
        ComponentName targetComponent = itemInfoWithIcon.getTargetComponent();
        String packageName = targetComponent != null ? targetComponent.getPackageName() : null;
        if (Objects.equals(packageName, "com.mega.carplay")) {
            boolean zIsCarPlayConnected = MegaLinkManager.getInstance().isCarPlayConnected();
            MLog.d("isCarPlayConnect " + zIsCarPlayConnected);
            if (zIsCarPlayConnected) {
                canvas.drawBitmap(BitmapFactory.decodeResource(this.mContext.getResources(), R.mipmap.icon_carplay_connect), (Rect) null, getBounds(), this.mPaint);
                return;
            } else {
                drawDefaultBitmap(canvas);
                return;
            }
        }
        if (Objects.equals(packageName, "com.mega.androidauto")) {
            boolean z = MegaLinkManager.getInstance().getAndroidAutoConnectionStatus() == 2;
            MLog.d("isAndroidAutoConnect " + z);
            canvas.drawBitmap(BitmapFactory.decodeResource(this.mContext.getResources(), z ? R.mipmap.icon_android_auto_connect : R.mipmap.icon_android_auto_disconnect), (Rect) null, getBounds(), this.mPaint);
        }
    }

    private void drawDefaultBitmap(Canvas canvas) {
        if (getScale() != 1.0f) {
            int iSave = canvas.save();
            Rect bounds = getBounds();
            canvas.scale(getScale(), getScale(), bounds.exactCenterX(), bounds.exactCenterY());
            drawInternal(canvas, bounds);
            canvas.restoreToCount(iSave);
            return;
        }
        drawInternal(canvas, getBounds());
    }

    private void customIcon(Canvas canvas) {
        canvas.drawBitmap(BitmapFactory.decodeResource(this.mContext.getResources(), R.mipmap.icon_calendar_bg), (Rect) null, getBounds(), this.mPaint);
        int i = Calendar.getInstance().get(5);
        int i2 = Calendar.getInstance().get(7);
        MLog.i("Calendar day: " + i + " week: " + i2);
        boolean z = getBounds().width() <= 255;
        Paint paint = new Paint();
        Paint paint2 = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint2.setAntiAlias(true);
        paint2.setDither(true);
        if (!z) {
            paint.setTextSize(72.0f);
            paint2.setTextSize(32.0f);
        } else {
            paint.setTextSize(53.0f);
            paint2.setTextSize(24.0f);
        }
        paint.setFakeBoldText(true);
        paint2.setFakeBoldText(false);
        paint.setColor(Color.parseColor("#FF000000"));
        paint2.setColor(Color.parseColor("#FF000000"));
        String str = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i));
        String strChangeWeekToStr = changeWeekToStr(i2);
        if (!z) {
            canvas.drawText(str, 87.0f, getBounds().top + 160, paint);
            canvas.drawText(strChangeWeekToStr, 96.0f, getBounds().top + 210, paint2);
        } else {
            canvas.drawText(str, 66.0f, getBounds().top + 122, paint);
            canvas.drawText(strChangeWeekToStr, 73.0f, getBounds().top + 160, paint2);
        }
    }

    private String changeWeekToStr(int week) {
        if (1 == week) {
            return this.mContext.getResources().getString(R.string.txt_week_sunday);
        }
        if (2 == week) {
            return this.mContext.getResources().getString(R.string.txt_week_monday);
        }
        if (3 == week) {
            return this.mContext.getResources().getString(R.string.txt_week_tuesday);
        }
        if (4 == week) {
            return this.mContext.getResources().getString(R.string.txt_week_wednesday);
        }
        if (5 == week) {
            return this.mContext.getResources().getString(R.string.txt_week_thursday);
        }
        if (6 == week) {
            return this.mContext.getResources().getString(R.string.txt_week_friday);
        }
        return 7 == week ? this.mContext.getResources().getString(R.string.txt_week_saturday) : "";
    }
}
