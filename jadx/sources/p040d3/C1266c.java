package p040d3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.appcompat.C0148R;
import com.example.navistart.R;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;
import p004a3.AbstractC0007a;
import p192s3.AbstractC3198l;
import p228w3.AbstractC3518c;

/* JADX INFO: renamed from: d3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1266c {

    /* JADX INFO: renamed from: a */
    public final C1265b f3027a;

    /* JADX INFO: renamed from: b */
    public final C1265b f3028b = new C1265b();

    /* JADX INFO: renamed from: c */
    public final float f3029c;

    /* JADX INFO: renamed from: d */
    public final float f3030d;

    /* JADX INFO: renamed from: e */
    public final float f3031e;

    /* JADX INFO: renamed from: f */
    public final float f3032f;

    /* JADX INFO: renamed from: g */
    public final float f3033g;

    /* JADX INFO: renamed from: h */
    public final float f3034h;

    /* JADX INFO: renamed from: i */
    public final int f3035i;

    /* JADX INFO: renamed from: j */
    public final int f3036j;

    /* JADX INFO: renamed from: k */
    public final int f3037k;

    /* JADX INFO: renamed from: l */
    public final int f3038l;

    public C1266c(Context context) {
        AttributeSet attributeSetAsAttributeSet;
        int styleAttribute;
        int next;
        C1265b c1265b = new C1265b();
        int i10 = c1265b.f3002b;
        if (i10 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i10);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (!TextUtils.equals(xml.getName(), "badge")) {
                    throw new XmlPullParserException("Must have a <" + ((Object) "badge") + "> start tag");
                }
                attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                styleAttribute = attributeSetAsAttributeSet.getStyleAttribute();
            } catch (IOException | XmlPullParserException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i10));
                notFoundException.initCause(e);
                throw notFoundException;
            }
        } else {
            attributeSetAsAttributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context, attributeSetAsAttributeSet, AbstractC0007a.f24c, R.attr.badgeStyle, styleAttribute == 0 ? R.style.Widget_MaterialComponents_Badge : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.f3029c = typedArrayM5136d.getDimensionPixelSize(5, -1);
        this.f3035i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.f3036j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f3030d = typedArrayM5136d.getDimensionPixelSize(15, -1);
        this.f3031e = typedArrayM5136d.getDimension(13, resources.getDimension(R.dimen.m3_badge_size));
        this.f3033g = typedArrayM5136d.getDimension(18, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f3032f = typedArrayM5136d.getDimension(4, resources.getDimension(R.dimen.m3_badge_size));
        this.f3034h = typedArrayM5136d.getDimension(14, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f3037k = typedArrayM5136d.getInt(25, 1);
        this.f3038l = typedArrayM5136d.getInt(2, 0);
        C1265b c1265b2 = this.f3028b;
        int i11 = c1265b.f3010j;
        c1265b2.f3010j = i11 == -2 ? 255 : i11;
        int i12 = c1265b.f3012l;
        if (i12 != -2) {
            c1265b2.f3012l = i12;
        } else {
            boolean zHasValue = typedArrayM5136d.hasValue(24);
            C1265b c1265b3 = this.f3028b;
            if (zHasValue) {
                c1265b3.f3012l = typedArrayM5136d.getInt(24, 0);
            } else {
                c1265b3.f3012l = -1;
            }
        }
        String str = c1265b.f3011k;
        if (str != null) {
            this.f3028b.f3011k = str;
        } else if (typedArrayM5136d.hasValue(8)) {
            this.f3028b.f3011k = typedArrayM5136d.getString(8);
        }
        C1265b c1265b4 = this.f3028b;
        c1265b4.f3016p = c1265b.f3016p;
        CharSequence charSequence = c1265b.f3017q;
        c1265b4.f3017q = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        C1265b c1265b5 = this.f3028b;
        int i13 = c1265b.f3018r;
        c1265b5.f3018r = i13 == 0 ? R.plurals.mtrl_badge_content_description : i13;
        int i14 = c1265b.f3019s;
        c1265b5.f3019s = i14 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i14;
        Boolean bool = c1265b.f3021u;
        c1265b5.f3021u = Boolean.valueOf(bool == null || bool.booleanValue());
        C1265b c1265b6 = this.f3028b;
        int i15 = c1265b.f3013m;
        c1265b6.f3013m = i15 == -2 ? typedArrayM5136d.getInt(22, -2) : i15;
        C1265b c1265b7 = this.f3028b;
        int i16 = c1265b.f3014n;
        c1265b7.f3014n = i16 == -2 ? typedArrayM5136d.getInt(23, -2) : i16;
        C1265b c1265b8 = this.f3028b;
        Integer num = c1265b.f3006f;
        c1265b8.f3006f = Integer.valueOf(num == null ? typedArrayM5136d.getResourceId(6, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        C1265b c1265b9 = this.f3028b;
        Integer num2 = c1265b.f3007g;
        c1265b9.f3007g = Integer.valueOf(num2 == null ? typedArrayM5136d.getResourceId(7, 0) : num2.intValue());
        C1265b c1265b10 = this.f3028b;
        Integer num3 = c1265b.f3008h;
        c1265b10.f3008h = Integer.valueOf(num3 == null ? typedArrayM5136d.getResourceId(16, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        C1265b c1265b11 = this.f3028b;
        Integer num4 = c1265b.f3009i;
        c1265b11.f3009i = Integer.valueOf(num4 == null ? typedArrayM5136d.getResourceId(17, 0) : num4.intValue());
        C1265b c1265b12 = this.f3028b;
        Integer num5 = c1265b.f3003c;
        c1265b12.f3003c = Integer.valueOf(num5 == null ? AbstractC3518c.m5587a(context, typedArrayM5136d, 1).getDefaultColor() : num5.intValue());
        C1265b c1265b13 = this.f3028b;
        Integer num6 = c1265b.f3005e;
        c1265b13.f3005e = Integer.valueOf(num6 == null ? typedArrayM5136d.getResourceId(9, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = c1265b.f3004d;
        if (num7 != null) {
            this.f3028b.f3004d = num7;
        } else {
            boolean zHasValue2 = typedArrayM5136d.hasValue(10);
            C1265b c1265b14 = this.f3028b;
            if (zHasValue2) {
                c1265b14.f3004d = Integer.valueOf(AbstractC3518c.m5587a(context, typedArrayM5136d, 10).getDefaultColor());
            } else {
                int iIntValue = c1265b14.f3005e.intValue();
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iIntValue, C0148R.styleable.TextAppearance);
                typedArrayObtainStyledAttributes.getDimension(C0148R.styleable.TextAppearance_android_textSize, 0.0f);
                ColorStateList colorStateListM5587a = AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_textColor);
                AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_textColorHint);
                AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_textColorLink);
                typedArrayObtainStyledAttributes.getInt(C0148R.styleable.TextAppearance_android_textStyle, 0);
                typedArrayObtainStyledAttributes.getInt(C0148R.styleable.TextAppearance_android_typeface, 1);
                int i17 = C0148R.styleable.TextAppearance_fontFamily;
                i17 = typedArrayObtainStyledAttributes.hasValue(i17) ? i17 : C0148R.styleable.TextAppearance_android_fontFamily;
                typedArrayObtainStyledAttributes.getResourceId(i17, 0);
                typedArrayObtainStyledAttributes.getString(i17);
                typedArrayObtainStyledAttributes.getBoolean(C0148R.styleable.TextAppearance_textAllCaps, false);
                AbstractC3518c.m5587a(context, typedArrayObtainStyledAttributes, C0148R.styleable.TextAppearance_android_shadowColor);
                typedArrayObtainStyledAttributes.getFloat(C0148R.styleable.TextAppearance_android_shadowDx, 0.0f);
                typedArrayObtainStyledAttributes.getFloat(C0148R.styleable.TextAppearance_android_shadowDy, 0.0f);
                typedArrayObtainStyledAttributes.getFloat(C0148R.styleable.TextAppearance_android_shadowRadius, 0.0f);
                typedArrayObtainStyledAttributes.recycle();
                TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iIntValue, AbstractC0007a.f47z);
                typedArrayObtainStyledAttributes2.hasValue(0);
                typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
                if (Build.VERSION.SDK_INT >= 26) {
                    typedArrayObtainStyledAttributes2.getString(typedArrayObtainStyledAttributes2.hasValue(3) ? 3 : 1);
                }
                typedArrayObtainStyledAttributes2.recycle();
                this.f3028b.f3004d = Integer.valueOf(colorStateListM5587a.getDefaultColor());
            }
        }
        C1265b c1265b15 = this.f3028b;
        Integer num8 = c1265b.f3020t;
        c1265b15.f3020t = Integer.valueOf(num8 == null ? typedArrayM5136d.getInt(3, 8388661) : num8.intValue());
        C1265b c1265b16 = this.f3028b;
        Integer num9 = c1265b.f3022v;
        c1265b16.f3022v = Integer.valueOf(num9 == null ? typedArrayM5136d.getDimensionPixelSize(12, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        C1265b c1265b17 = this.f3028b;
        Integer num10 = c1265b.f3023w;
        c1265b17.f3023w = Integer.valueOf(num10 == null ? typedArrayM5136d.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        C1265b c1265b18 = this.f3028b;
        Integer num11 = c1265b.f3024x;
        c1265b18.f3024x = Integer.valueOf(num11 == null ? typedArrayM5136d.getDimensionPixelOffset(19, 0) : num11.intValue());
        C1265b c1265b19 = this.f3028b;
        Integer num12 = c1265b.f3025y;
        c1265b19.f3025y = Integer.valueOf(num12 == null ? typedArrayM5136d.getDimensionPixelOffset(26, 0) : num12.intValue());
        C1265b c1265b20 = this.f3028b;
        Integer num13 = c1265b.f3026z;
        c1265b20.f3026z = Integer.valueOf(num13 == null ? typedArrayM5136d.getDimensionPixelOffset(20, c1265b20.f3024x.intValue()) : num13.intValue());
        C1265b c1265b21 = this.f3028b;
        Integer num14 = c1265b.f2996A;
        c1265b21.f2996A = Integer.valueOf(num14 == null ? typedArrayM5136d.getDimensionPixelOffset(27, c1265b21.f3025y.intValue()) : num14.intValue());
        C1265b c1265b22 = this.f3028b;
        Integer num15 = c1265b.f2999D;
        c1265b22.f2999D = Integer.valueOf(num15 == null ? typedArrayM5136d.getDimensionPixelOffset(21, 0) : num15.intValue());
        C1265b c1265b23 = this.f3028b;
        Integer num16 = c1265b.f2997B;
        c1265b23.f2997B = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        C1265b c1265b24 = this.f3028b;
        Integer num17 = c1265b.f2998C;
        c1265b24.f2998C = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        C1265b c1265b25 = this.f3028b;
        Boolean bool2 = c1265b.f3000E;
        c1265b25.f3000E = Boolean.valueOf(bool2 == null ? typedArrayM5136d.getBoolean(0, false) : bool2.booleanValue());
        typedArrayM5136d.recycle();
        Locale locale = c1265b.f3015o;
        C1265b c1265b26 = this.f3028b;
        if (locale == null) {
            c1265b26.f3015o = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            c1265b26.f3015o = locale;
        }
        this.f3027a = c1265b;
    }
}
