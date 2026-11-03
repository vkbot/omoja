package com.android.launcher3.activity.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public class AnimIconView extends View {
    private Drawable mIcon;
    private Rect mIconBounds;
    private ViewGroup mParent;

    public AnimIconView(Context context) {
        super(context);
    }

    public static AnimIconView getIconView(ViewGroup parent, View original, Drawable icon, final int iconWidth, int iconHeight) {
        AnimIconView animIconView = new AnimIconView(parent.getContext());
        animIconView.mParent = parent;
        animIconView.mIcon = icon;
        animIconView.mIconBounds = icon.getBounds();
        animIconView.setPivotX(0.0f);
        animIconView.setPivotY(0.0f);
        animIconView.setLayoutParams(new ViewGroup.LayoutParams(animIconView.mIconBounds.width(), animIconView.mIconBounds.height()));
        animIconView.setClipToOutline(true);
        animIconView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.activity.view.AnimIconView.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                float width = view.getWidth();
                int i = iconWidth;
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), Math.max((width / (i != 0 ? i : 156.0f)) * 32.0f, 32.0f));
            }
        });
        return animIconView;
    }

    public void update(float transX, float transY, float scaleX, float scaleY, float alpha) {
        setTranslationX(transX - this.mIconBounds.left);
        setTranslationY(transY - this.mIconBounds.top);
        setScaleX(scaleX);
        setScaleY(scaleY);
        setAlpha(alpha);
    }

    public void attachToParent() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
        this.mParent.addView(this);
    }

    public void detachFromParent() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mIcon.draw(canvas);
    }
}
