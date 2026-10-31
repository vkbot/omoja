package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.example.navistart.R;
import p047e0.AbstractC1385l2;
import p047e0.AbstractC1387m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class HeatingButtonView extends FrameLayout {

    /* JADX INFO: renamed from: b */
    public int f1817b;

    /* JADX INFO: renamed from: c */
    public int f1818c;

    /* JADX INFO: renamed from: d */
    public final int f1819d;

    /* JADX INFO: renamed from: e */
    public boolean f1820e;

    /* JADX INFO: renamed from: f */
    public int f1821f;

    /* JADX INFO: renamed from: g */
    public final ImageButton f1822g;

    /* JADX INFO: renamed from: h */
    public final ImageView f1823h;

    /* JADX INFO: renamed from: i */
    public final ImageView f1824i;

    /* JADX INFO: renamed from: j */
    public final ImageView f1825j;

    /* JADX INFO: renamed from: k */
    public final ImageView f1826k;

    /* JADX INFO: renamed from: l */
    public final TextView f1827l;

    /* JADX INFO: renamed from: m */
    public final int f1828m;

    /* JADX INFO: renamed from: n */
    public final int f1829n;

    public HeatingButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1817b = 0;
        this.f1818c = 1;
        this.f1819d = 0;
        this.f1820e = false;
        this.f1821f = 0;
        this.f1828m = R.drawable.lamp_off2;
        this.f1829n = R.drawable.lamp_on2;
        View.inflate(context, R.layout.view_heating_button2, this);
        this.f1822g = (ImageButton) findViewById(R.id.heating_button);
        this.f1827l = (TextView) findViewById(R.id.heating_button_text);
        this.f1823h = (ImageView) findViewById(R.id.lamp1);
        this.f1824i = (ImageView) findViewById(R.id.lamp2);
        this.f1825j = (ImageView) findViewById(R.id.lamp3);
        this.f1826k = (ImageView) findViewById(R.id.heating_button_ico);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3306d, 0, 0);
            try {
                this.f1817b = attributeSet.getAttributeIntValue(AbstractC1387m.m2421h(new byte[]{-28, -63, -115, -28, 83, -41, 106, 100, -17, -35, -100, -7, 8, -117, 107, 118, -30, -47, -117, -5, 0, -100, 107, 116, -29, -40, -42, -11, 25, -109, 106, 101, -23, -58, -44, -11, 28, -116, 42}, new byte[]{-116, -75, -7, -108, 105, -8, 69, 23}), AbstractC1387m.m2421h(new byte[]{24, 38, 92, -14, -76, 50, 23, -25, 30, 54}, new byte[]{122, 83, 40, -122, -37, 92, 90, -120}), 0);
                this.f1821f = typedArrayObtainStyledAttributes.getResourceId(2, -1);
                this.f1819d = typedArrayObtainStyledAttributes.getInteger(1, -1);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(3, -1);
                if (resourceId != -1) {
                    this.f1826k.setImageResource(resourceId);
                }
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        m1669b();
    }

    private void setButtonText(int i10) {
        if (i10 > -1) {
            this.f1821f = i10;
            this.f1827l.setText(getResources().getString(this.f1821f));
        }
        if (this.f1819d == 1) {
            this.f1827l.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: a */
    public final int m1668a() {
        int i10 = this.f1817b;
        if (i10 == 0) {
            boolean z9 = this.f1820e;
            this.f1820e = !z9;
            if (z9) {
                m1670c(1);
            } else {
                m1670c(3);
            }
            return this.f1820e ? 3 : 1;
        }
        if (i10 != 1) {
            return 0;
        }
        int i11 = (this.f1818c % 4) + 1;
        this.f1818c = i11;
        m1670c(i11);
        return this.f1818c;
    }

    /* JADX INFO: renamed from: b */
    public final void m1669b() {
        setButtonText(this.f1821f);
        int i10 = this.f1817b;
        if (i10 == 0) {
            this.f1823h.setVisibility(4);
            this.f1824i.setVisibility(0);
            this.f1825j.setVisibility(4);
        } else if (i10 == 1) {
            this.f1823h.setVisibility(0);
            this.f1824i.setVisibility(0);
            this.f1825j.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1670c(int i10) {
        this.f1818c = i10;
        int i11 = this.f1828m;
        if (i10 == 1) {
            this.f1823h.setImageResource(i11);
            this.f1824i.setImageResource(i11);
            this.f1825j.setImageResource(i11);
            return;
        }
        int i12 = this.f1829n;
        if (i10 == 2) {
            this.f1823h.setImageResource(i12);
            this.f1824i.setImageResource(i11);
            this.f1825j.setImageResource(i11);
        } else if (i10 == 3) {
            this.f1823h.setImageResource(i12);
            this.f1824i.setImageResource(i12);
            this.f1825j.setImageResource(i11);
        } else {
            if (i10 != 4) {
                return;
            }
            this.f1823h.setImageResource(i12);
            this.f1824i.setImageResource(i12);
            this.f1825j.setImageResource(i12);
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m1671d(Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        this.f1820e = zBooleanValue;
        m1670c(zBooleanValue ? 3 : 1);
    }

    public int getButtonMode() {
        return this.f1817b;
    }

    public Boolean getEnabled() {
        return Boolean.valueOf(this.f1820e);
    }

    public ImageButton getHeatingButton() {
        return this.f1822g;
    }

    public void setButtonMode(int i10) {
        this.f1817b = i10;
        m1669b();
    }

    public void setButtonText(String str) {
        this.f1827l.setText(str);
    }
}
