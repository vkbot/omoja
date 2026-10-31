package androidx.core.graphics;

import android.graphics.Color;
import android.graphics.ColorSpace$Model;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class ColorUtils$Api26Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ColorUtils$Api26Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static Color compositeColors(Color color, Color color2) {
        if (!Objects.equals(color.getModel(), color2.getModel())) {
            StringBuilder sb = new StringBuilder("Color models must match (");
            sb.append(color.getModel());
            ColorSpace$Model model = color2.getModel();
            sb.append(" vs. ");
            sb.append(model);
            sb.append(")");
            throw new IllegalArgumentException(sb.toString());
        }
        if (!Objects.equals(color2.getColorSpace(), color.getColorSpace())) {
            color = color.convert(color2.getColorSpace());
        }
        float[] components = color.getComponents();
        float[] components2 = color2.getComponents();
        float fAlpha = color.alpha();
        float fAlpha2 = (1.0f - fAlpha) * color2.alpha();
        int componentCount = color2.getComponentCount() - 1;
        float f8 = fAlpha + fAlpha2;
        components2[componentCount] = f8;
        if (f8 > 0.0f) {
            fAlpha /= f8;
            fAlpha2 /= f8;
        }
        for (int i9 = 0; i9 < componentCount; i9++) {
            components2[i9] = (components2[i9] * fAlpha2) + (components[i9] * fAlpha);
        }
        return Color.valueOf(components2, color2.getColorSpace());
    }
}
