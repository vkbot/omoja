package w3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Build$VERSION;
import android.text.TextPaint;
import android.util.Log;
import android.util.Xml;
import androidx.appcompat.R$styleable;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f5897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5898b;
    public final String c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f5899f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f5900g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f5901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f5902i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f5903j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ColorStateList f5904k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f5905l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f5906m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5907n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f5908o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Typeface f5909p;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(Context context, int i9) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i9, R$styleable.TextAppearance);
        this.f5905l = typedArrayObtainStyledAttributes.getDimension(R$styleable.TextAppearance_android_textSize, 0.0f);
        this.f5904k = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColor);
        c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorHint);
        c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorLink);
        this.d = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, 0);
        this.e = typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, 1);
        int i10 = R$styleable.TextAppearance_fontFamily;
        i10 = typedArrayObtainStyledAttributes.hasValue(i10) ? i10 : R$styleable.TextAppearance_android_fontFamily;
        this.f5906m = typedArrayObtainStyledAttributes.getResourceId(i10, 0);
        this.f5898b = typedArrayObtainStyledAttributes.getString(i10);
        typedArrayObtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false);
        this.f5897a = c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_shadowColor);
        this.f5899f = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f5900g = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f5901h = typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i9, a3.a.f26z);
        this.f5902i = typedArrayObtainStyledAttributes2.hasValue(0);
        this.f5903j = typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
        if (Build$VERSION.SDK_INT >= 26) {
            this.c = typedArrayObtainStyledAttributes2.getString(typedArrayObtainStyledAttributes2.hasValue(3) ? 3 : 1);
        }
        typedArrayObtainStyledAttributes2.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        String str;
        Typeface typeface = this.f5909p;
        int i9 = this.d;
        if (typeface == null && (str = this.f5898b) != null) {
            this.f5909p = Typeface.create(str, i9);
        }
        if (this.f5909p == null) {
            int i10 = this.e;
            if (i10 == 1) {
                this.f5909p = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.f5909p = Typeface.SERIF;
            } else if (i10 != 3) {
                this.f5909p = Typeface.DEFAULT;
            } else {
                this.f5909p = Typeface.MONOSPACE;
            }
            this.f5909p = Typeface.create(this.f5909p, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(Context context, g gVar) {
        if (!c(context)) {
            a();
        }
        int i9 = this.f5906m;
        if (i9 == 0) {
            this.f5907n = true;
        }
        if (this.f5907n) {
            gVar.b(this.f5909p, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i9, new d(this, gVar), null);
        } catch (Resources$NotFoundException unused) {
            this.f5907n = true;
            gVar.a(1);
        } catch (Exception e) {
            Log.d("TextAppearance", "Error loading font " + this.f5898b, e);
            this.f5907n = true;
            gVar.a(-3);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c(Context context) {
        String string;
        Typeface typefaceCreate;
        if (this.f5907n) {
            return true;
        }
        int i9 = this.f5906m;
        if (i9 != 0) {
            Typeface cachedFont = ResourcesCompat.getCachedFont(context, i9);
            if (cachedFont != null) {
                this.f5909p = cachedFont;
                this.f5907n = true;
                return true;
            }
            Typeface typefaceCreate2 = null;
            if (!this.f5908o) {
                this.f5908o = true;
                Resources resources = context.getResources();
                if (i9 == 0 || !resources.getResourceTypeName(i9).equals("font")) {
                    string = null;
                    break;
                }
                try {
                    XmlResourceParser xml = resources.getXml(i9);
                    while (true) {
                        if (xml.getEventType() == 1) {
                            string = null;
                            break;
                        }
                        if (xml.getEventType() == 2 && xml.getName().equals("font-family")) {
                            TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xml), androidx.core.R$styleable.FontFamily);
                            string = typedArrayObtainAttributes.getString(androidx.core.R$styleable.FontFamily_fontProviderSystemFontFamily);
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
                    typefaceCreate2 = Typeface.create(typefaceCreate, this.d);
                }
            }
            if (typefaceCreate2 != null) {
                this.f5909p = typefaceCreate2;
                this.f5907n = true;
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(Context context, TextPaint textPaint, g gVar) {
        e(context, textPaint, gVar);
        ColorStateList colorStateList = this.f5904k;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : ViewCompat.MEASURED_STATE_MASK);
        ColorStateList colorStateList2 = this.f5897a;
        textPaint.setShadowLayer(this.f5901h, this.f5899f, this.f5900g, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(Context context, TextPaint textPaint, g gVar) {
        Typeface typeface;
        if (c(context) && this.f5907n && (typeface = this.f5909p) != null) {
            f(context, textPaint, typeface);
            return;
        }
        a();
        f(context, textPaint, this.f5909p);
        b(context, new e(this, context, textPaint, gVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceA = i.a(context.getResources().getConfiguration(), typeface);
        if (typefaceA != null) {
            typeface = typefaceA;
        }
        textPaint.setTypeface(typeface);
        int i9 = (~typeface.getStyle()) & this.d;
        textPaint.setFakeBoldText((i9 & 1) != 0);
        textPaint.setTextSkewX((i9 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f5905l);
        if (Build$VERSION.SDK_INT >= 26) {
            w0.d.k(textPaint, this.c);
        }
        if (this.f5902i) {
            textPaint.setLetterSpacing(this.f5903j);
        }
    }
}
