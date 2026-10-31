package d3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build$VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.appcompat.R$styleable;
import java.io.IOException;
import java.util.Locale;
import java.util.Locale$Category;
import org.xmlpull.v1.XmlPullParserException;
import s3.l;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f1726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f1727b = new b();
    public final float c;
    public final float d;
    public final float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f1728f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f1729g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f1730h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1731i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f1732j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f1733k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1734l;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(Context context) {
        AttributeSet attributeSetAsAttributeSet;
        int styleAttribute;
        int next;
        b bVar = new b();
        int i9 = bVar.f1707b;
        if (i9 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i9);
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
                Resources$NotFoundException resources$NotFoundException = new Resources$NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i9));
                resources$NotFoundException.initCause(e);
                throw resources$NotFoundException;
            }
        } else {
            attributeSetAsAttributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayD = l.d(context, attributeSetAsAttributeSet, a3.a.c, 2130903137, styleAttribute == 0 ? 2132018319 : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.c = typedArrayD.getDimensionPixelSize(5, -1);
        this.f1731i = context.getResources().getDimensionPixelSize(2131100471);
        this.f1732j = context.getResources().getDimensionPixelSize(2131100474);
        this.d = typedArrayD.getDimensionPixelSize(15, -1);
        this.e = typedArrayD.getDimension(13, resources.getDimension(2131099840));
        this.f1729g = typedArrayD.getDimension(18, resources.getDimension(2131099844));
        this.f1728f = typedArrayD.getDimension(4, resources.getDimension(2131099840));
        this.f1730h = typedArrayD.getDimension(14, resources.getDimension(2131099844));
        this.f1733k = typedArrayD.getInt(25, 1);
        this.f1734l = typedArrayD.getInt(2, 0);
        b bVar2 = this.f1727b;
        int i10 = bVar.f1712j;
        bVar2.f1712j = i10 == -2 ? 255 : i10;
        int i11 = bVar.f1714l;
        if (i11 != -2) {
            bVar2.f1714l = i11;
        } else {
            boolean zHasValue = typedArrayD.hasValue(24);
            b bVar3 = this.f1727b;
            if (zHasValue) {
                bVar3.f1714l = typedArrayD.getInt(24, 0);
            } else {
                bVar3.f1714l = -1;
            }
        }
        String str = bVar.f1713k;
        if (str != null) {
            this.f1727b.f1713k = str;
        } else if (typedArrayD.hasValue(8)) {
            this.f1727b.f1713k = typedArrayD.getString(8);
        }
        b bVar4 = this.f1727b;
        bVar4.f1718p = bVar.f1718p;
        CharSequence charSequence = bVar.f1719q;
        bVar4.f1719q = charSequence == null ? context.getString(2131952351) : charSequence;
        b bVar5 = this.f1727b;
        int i12 = bVar.r;
        bVar5.r = i12 == 0 ? 2131820544 : i12;
        int i13 = bVar.f1720s;
        bVar5.f1720s = i13 == 0 ? 2131952366 : i13;
        Boolean bool = bVar.f1721u;
        bVar5.f1721u = Boolean.valueOf(bool == null || bool.booleanValue());
        b bVar6 = this.f1727b;
        int i14 = bVar.f1715m;
        bVar6.f1715m = i14 == -2 ? typedArrayD.getInt(22, -2) : i14;
        b bVar7 = this.f1727b;
        int i15 = bVar.f1716n;
        bVar7.f1716n = i15 == -2 ? typedArrayD.getInt(23, -2) : i15;
        b bVar8 = this.f1727b;
        Integer num = bVar.f1708f;
        bVar8.f1708f = Integer.valueOf(num == null ? typedArrayD.getResourceId(6, 2132017575) : num.intValue());
        b bVar9 = this.f1727b;
        Integer num2 = bVar.f1709g;
        bVar9.f1709g = Integer.valueOf(num2 == null ? typedArrayD.getResourceId(7, 0) : num2.intValue());
        b bVar10 = this.f1727b;
        Integer num3 = bVar.f1710h;
        bVar10.f1710h = Integer.valueOf(num3 == null ? typedArrayD.getResourceId(16, 2132017575) : num3.intValue());
        b bVar11 = this.f1727b;
        Integer num4 = bVar.f1711i;
        bVar11.f1711i = Integer.valueOf(num4 == null ? typedArrayD.getResourceId(17, 0) : num4.intValue());
        b bVar12 = this.f1727b;
        Integer num5 = bVar.c;
        bVar12.c = Integer.valueOf(num5 == null ? w3.c.a(context, typedArrayD, 1).getDefaultColor() : num5.intValue());
        b bVar13 = this.f1727b;
        Integer num6 = bVar.e;
        bVar13.e = Integer.valueOf(num6 == null ? typedArrayD.getResourceId(9, 2132017756) : num6.intValue());
        Integer num7 = bVar.d;
        if (num7 != null) {
            this.f1727b.d = num7;
        } else {
            boolean zHasValue2 = typedArrayD.hasValue(10);
            b bVar14 = this.f1727b;
            if (zHasValue2) {
                bVar14.d = Integer.valueOf(w3.c.a(context, typedArrayD, 10).getDefaultColor());
            } else {
                int iIntValue = bVar14.e.intValue();
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iIntValue, R$styleable.TextAppearance);
                typedArrayObtainStyledAttributes.getDimension(R$styleable.TextAppearance_android_textSize, 0.0f);
                ColorStateList colorStateListA = w3.c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColor);
                w3.c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorHint);
                w3.c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorLink);
                typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, 0);
                typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, 1);
                int i16 = R$styleable.TextAppearance_fontFamily;
                i16 = typedArrayObtainStyledAttributes.hasValue(i16) ? i16 : R$styleable.TextAppearance_android_fontFamily;
                typedArrayObtainStyledAttributes.getResourceId(i16, 0);
                typedArrayObtainStyledAttributes.getString(i16);
                typedArrayObtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false);
                w3.c.a(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_shadowColor);
                typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDx, 0.0f);
                typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDy, 0.0f);
                typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowRadius, 0.0f);
                typedArrayObtainStyledAttributes.recycle();
                TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iIntValue, a3.a.f26z);
                typedArrayObtainStyledAttributes2.hasValue(0);
                typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
                if (Build$VERSION.SDK_INT >= 26) {
                    typedArrayObtainStyledAttributes2.getString(typedArrayObtainStyledAttributes2.hasValue(3) ? 3 : 1);
                }
                typedArrayObtainStyledAttributes2.recycle();
                this.f1727b.d = Integer.valueOf(colorStateListA.getDefaultColor());
            }
        }
        b bVar15 = this.f1727b;
        Integer num8 = bVar.t;
        bVar15.t = Integer.valueOf(num8 == null ? typedArrayD.getInt(3, 8388661) : num8.intValue());
        b bVar16 = this.f1727b;
        Integer num9 = bVar.f1722v;
        bVar16.f1722v = Integer.valueOf(num9 == null ? typedArrayD.getDimensionPixelSize(12, resources.getDimensionPixelSize(2131100472)) : num9.intValue());
        b bVar17 = this.f1727b;
        Integer num10 = bVar.w;
        bVar17.w = Integer.valueOf(num10 == null ? typedArrayD.getDimensionPixelSize(11, resources.getDimensionPixelSize(2131099846)) : num10.intValue());
        b bVar18 = this.f1727b;
        Integer num11 = bVar.f1723x;
        bVar18.f1723x = Integer.valueOf(num11 == null ? typedArrayD.getDimensionPixelOffset(19, 0) : num11.intValue());
        b bVar19 = this.f1727b;
        Integer num12 = bVar.f1724y;
        bVar19.f1724y = Integer.valueOf(num12 == null ? typedArrayD.getDimensionPixelOffset(26, 0) : num12.intValue());
        b bVar20 = this.f1727b;
        Integer num13 = bVar.f1725z;
        bVar20.f1725z = Integer.valueOf(num13 == null ? typedArrayD.getDimensionPixelOffset(20, bVar20.f1723x.intValue()) : num13.intValue());
        b bVar21 = this.f1727b;
        Integer num14 = bVar.A;
        bVar21.A = Integer.valueOf(num14 == null ? typedArrayD.getDimensionPixelOffset(27, bVar21.f1724y.intValue()) : num14.intValue());
        b bVar22 = this.f1727b;
        Integer num15 = bVar.D;
        bVar22.D = Integer.valueOf(num15 == null ? typedArrayD.getDimensionPixelOffset(21, 0) : num15.intValue());
        b bVar23 = this.f1727b;
        Integer num16 = bVar.B;
        bVar23.B = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        b bVar24 = this.f1727b;
        Integer num17 = bVar.C;
        bVar24.C = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        b bVar25 = this.f1727b;
        Boolean bool2 = bVar.E;
        bVar25.E = Boolean.valueOf(bool2 == null ? typedArrayD.getBoolean(0, false) : bool2.booleanValue());
        typedArrayD.recycle();
        Locale locale = bVar.f1717o;
        b bVar26 = this.f1727b;
        if (locale == null) {
            bVar26.f1717o = Locale.getDefault(Locale$Category.FORMAT);
        } else {
            bVar26.f1717o = locale;
        }
        this.f1726a = bVar;
    }
}
