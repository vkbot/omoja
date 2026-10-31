package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import e0.l2;
import e0.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HeatingButtonView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f966b;
    public int c;
    public final int d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f967f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ImageButton f968g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ImageView f969h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImageView f970i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ImageView f971j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageView f972k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final TextView f973l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f974m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f975n;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HeatingButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f966b = 0;
        this.c = 1;
        this.d = 0;
        this.e = false;
        this.f967f = 0;
        this.f974m = 2131165533;
        this.f975n = 2131165535;
        View.inflate(context, 2131493148, this);
        this.f968g = (ImageButton) findViewById(2131296815);
        this.f973l = (TextView) findViewById(2131296817);
        this.f969h = (ImageView) findViewById(2131296892);
        this.f970i = (ImageView) findViewById(2131296893);
        this.f971j = (ImageView) findViewById(2131296894);
        this.f972k = (ImageView) findViewById(2131296816);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, l2.d, 0, 0);
            try {
                this.f966b = attributeSet.getAttributeIntValue(m.h(new byte[]{-28, -63, -115, -28, 83, -41, 106, 100, -17, -35, -100, -7, 8, -117, 107, 118, -30, -47, -117, -5, 0, -100, 107, 116, -29, -40, -42, -11, 25, -109, 106, 101, -23, -58, -44, -11, 28, -116, 42}, new byte[]{-116, -75, -7, -108, 105, -8, 69, 23}), m.h(new byte[]{24, 38, 92, -14, -76, 50, 23, -25, 30, 54}, new byte[]{122, 83, 40, -122, -37, 92, 90, -120}), 0);
                this.f967f = typedArrayObtainStyledAttributes.getResourceId(2, -1);
                this.d = typedArrayObtainStyledAttributes.getInteger(1, -1);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(3, -1);
                if (resourceId != -1) {
                    this.f972k.setImageResource(resourceId);
                }
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setButtonText(int i9) {
        if (i9 > -1) {
            this.f967f = i9;
            this.f973l.setText(getResources().getString(this.f967f));
        }
        if (this.d == 1) {
            this.f973l.setVisibility(0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a() {
        int i9 = this.f966b;
        if (i9 == 0) {
            boolean z8 = this.e;
            this.e = !z8;
            if (z8) {
                c(1);
            } else {
                c(3);
            }
            return this.e ? 3 : 1;
        }
        if (i9 != 1) {
            return 0;
        }
        int i10 = (this.c % 4) + 1;
        this.c = i10;
        c(i10);
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        setButtonText(this.f967f);
        int i9 = this.f966b;
        if (i9 == 0) {
            this.f969h.setVisibility(4);
            this.f970i.setVisibility(0);
            this.f971j.setVisibility(4);
        } else if (i9 == 1) {
            this.f969h.setVisibility(0);
            this.f970i.setVisibility(0);
            this.f971j.setVisibility(0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(int i9) {
        this.c = i9;
        int i10 = this.f974m;
        if (i9 == 1) {
            this.f969h.setImageResource(i10);
            this.f970i.setImageResource(i10);
            this.f971j.setImageResource(i10);
            return;
        }
        int i11 = this.f975n;
        if (i9 == 2) {
            this.f969h.setImageResource(i11);
            this.f970i.setImageResource(i10);
            this.f971j.setImageResource(i10);
        } else if (i9 == 3) {
            this.f969h.setImageResource(i11);
            this.f970i.setImageResource(i11);
            this.f971j.setImageResource(i10);
        } else {
            if (i9 != 4) {
                return;
            }
            this.f969h.setImageResource(i11);
            this.f970i.setImageResource(i11);
            this.f971j.setImageResource(i11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        this.e = zBooleanValue;
        c(zBooleanValue ? 3 : 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getButtonMode() {
        return this.f966b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Boolean getEnabled() {
        return Boolean.valueOf(this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ImageButton getHeatingButton() {
        return this.f968g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setButtonMode(int i9) {
        this.f966b = i9;
        b();
    }

    public void setButtonText(String str) {
        this.f973l.setText(str);
    }
}
