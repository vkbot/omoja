package p228w3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.Log;
import android.util.Xml;
import androidx.appcompat.C0148R;
import androidx.core.C0310R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import p004a3.AbstractC0007a;

/* JADX INFO: renamed from: w3.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3521f {

    /* JADX INFO: renamed from: a */
    public final ColorStateList f10441a;

    /* JADX INFO: renamed from: b */
    public final String f10442b;

    /* JADX INFO: renamed from: c */
    public final String f10443c;

    /* JADX INFO: renamed from: d */
    public final int f10444d;

    /* JADX INFO: renamed from: e */
    public final int f10445e;

    /* JADX INFO: renamed from: f */
    public final float f10446f;

    /* JADX INFO: renamed from: g */
    public final float f10447g;

    /* JADX INFO: renamed from: h */
    public final float f10448h;

    /* JADX INFO: renamed from: i */
    public final boolean f10449i;

    /* JADX INFO: renamed from: j */
    public final float f10450j;

    /* JADX INFO: renamed from: k */
    public final ColorStateList f10451k;

    /* JADX INFO: renamed from: l */
    public float f10452l;

    /* JADX INFO: renamed from: m */
    public final int f10453m;

    /* JADX INFO: renamed from: n */
    public boolean f10454n = false;

    /* JADX INFO: renamed from: o */
    public boolean f10455o = false;

    /* JADX INFO: renamed from: p */
    public Typeface f10456p;

    public C3521f(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, C0148R.styleable.TextAppearance);
        this.f10452l = typedArrayObtainStyledAttributes.getDimension(C0148R.styleable.TextAppearance_android_textSize, 0.0f);
        this.f10451k = AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_textColor);
        AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_textColorHint);
        AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_textColorLink);
        this.f10444d = typedArrayObtainStyledAttributes.getInt(C0148R.styleable.TextAppearance_android_textStyle, 0);
        this.f10445e = typedArrayObtainStyledAttributes.getInt(C0148R.styleable.TextAppearance_android_typeface, 1);
        int i11 = C0148R.styleable.TextAppearance_fontFamily;
        i11 = typedArrayObtainStyledAttributes.hasValue(i11) ? i11 : C0148R.styleable.TextAppearance_android_fontFamily;
        this.f10453m = typedArrayObtainStyledAttributes.getResourceId(i11, 0);
        this.f10442b = typedArrayObtainStyledAttributes.getString(i11);
        typedArrayObtainStyledAttributes.getBoolean(C0148R.styleable.TextAppearance_textAllCaps, false);
        this.f10441a = AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_shadowColor);
        this.f10446f = typedArrayObtainStyledAttributes.getFloat(C0148R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f10447g = typedArrayObtainStyledAttributes.getFloat(C0148R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f10448h = typedArrayObtainStyledAttributes.getFloat(C0148R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i10, AbstractC0007a.f47z);
        this.f10449i = typedArrayObtainStyledAttributes2.hasValue(0);
        this.f10450j = typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
        if (Build.VERSION.SDK_INT >= 26) {
            this.f10443c = typedArrayObtainStyledAttributes2.getString(typedArrayObtainStyledAttributes2.hasValue(3) ? 3 : 1);
        }
        typedArrayObtainStyledAttributes2.recycle();
    }

    /* JADX INFO: renamed from: a */
    public final void m5591a() {
        String str;
        Typeface typeface = this.f10456p;
        int i10 = this.f10444d;
        if (typeface == null && (str = this.f10442b) != null) {
            this.f10456p = Typeface.create(str, i10);
        }
        if (this.f10456p == null) {
            int i11 = this.f10445e;
            if (i11 == 1) {
                this.f10456p = Typeface.SANS_SERIF;
            } else if (i11 == 2) {
                this.f10456p = Typeface.SERIF;
            } else if (i11 != 3) {
                this.f10456p = Typeface.DEFAULT;
            } else {
                this.f10456p = Typeface.MONOSPACE;
            }
            this.f10456p = Typeface.create(this.f10456p, i10);
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m5592b(Context context, AbstractC3522g abstractC3522g) {
        if (!m5593c(context)) {
            m5591a();
        }
        int i10 = this.f10453m;
        if (i10 == 0) {
            this.f10454n = true;
        }
        if (this.f10454n) {
            abstractC3522g.mo3503b(this.f10456p, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i10, new C3519d(this, abstractC3522g), null);
        } catch (Resources.NotFoundException unused) {
            this.f10454n = true;
            abstractC3522g.mo3502a(1);
        } catch (Exception e) {
            Log.d("TextAppearance", "Error loading font " + this.f10442b, e);
            this.f10454n = true;
            abstractC3522g.mo3502a(-3);
        }
    }

    /* JADX INFO: renamed from: c */
    public final boolean m5593c(Context context) {
        String string;
        Typeface typefaceCreate;
        if (this.f10454n) {
            return true;
        }
        int i10 = this.f10453m;
        if (i10 != 0) {
            Typeface cachedFont = ResourcesCompat.getCachedFont(context, i10);
            if (cachedFont != null) {
                this.f10456p = cachedFont;
                this.f10454n = true;
                return true;
            }
            Typeface typefaceCreate2 = null;
            if (!this.f10455o) {
                this.f10455o = true;
                Resources resources = context.getResources();
                if (i10 == 0 || !resources.getResourceTypeName(i10).equals("font")) {
                    string = null;
                    break;
                }
                try {
                    XmlResourceParser xml = resources.getXml(i10);
                    while (true) {
                        if (xml.getEventType() == 1) {
                            string = null;
                            break;
                        }
                        if (xml.getEventType() == 2 && xml.getName().equals("font-family")) {
                            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xml), C0310R.styleable.FontFamily);
                            string = typedArrayObtainAttributes.getString(C0310R.styleable.FontFamily_fontProviderSystemFontFamily);
                            typedArrayObtainAttributes.recycle();
                            break;
                        }
                        xml.next();
                        string = null;
                        break;
                    }
                } catch (Throwable unused) {
                }
                if (string != null && (typefaceCreate = Typeface.create(string, 0)) != Typeface.DEFAULT) {
                    typefaceCreate2 = Typeface.create(typefaceCreate, this.f10444d);
                }
            }
            if (typefaceCreate2 != null) {
                this.f10456p = typefaceCreate2;
                this.f10454n = true;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: d */
    public final void m5594d(Context context, TextPaint textPaint, AbstractC3522g abstractC3522g) {
        m5595e(context, textPaint, abstractC3522g);
        ColorStateList colorStateList = this.f10451k;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : ViewCompat.MEASURED_STATE_MASK);
        ColorStateList colorStateList2 = this.f10441a;
        textPaint.setShadowLayer(this.f10448h, this.f10446f, this.f10447g, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    /* JADX INFO: renamed from: e */
    public final void m5595e(Context context, TextPaint textPaint, AbstractC3522g abstractC3522g) {
        Typeface typeface;
        if (m5593c(context) && this.f10454n && (typeface = this.f10456p) != null) {
            m5596f(context, textPaint, typeface);
            return;
        }
        m5591a();
        m5596f(context, textPaint, this.f10456p);
        m5592b(context, new C3520e(this, context, textPaint, abstractC3522g));
    }

    /* JADX INFO: renamed from: f */
    public final void m5596f(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceM5599a = AbstractC3524i.m5599a(context.getResources().getConfiguration(), typeface);
        if (typefaceM5599a != null) {
            typeface = typefaceM5599a;
        }
        textPaint.setTypeface(typeface);
        int i10 = (~typeface.getStyle()) & this.f10444d;
        textPaint.setFakeBoldText((i10 & 1) != 0);
        textPaint.setTextSkewX((i10 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f10452l);
        if (Build.VERSION.SDK_INT >= 26) {
            textPaint.setFontVariationSettings(this.f10443c);
        }
        if (this.f10449i) {
            textPaint.setLetterSpacing(this.f10450j);
        }
    }
}
