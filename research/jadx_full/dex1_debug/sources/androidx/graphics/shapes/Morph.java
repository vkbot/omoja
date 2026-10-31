package androidx.graphics.shapes;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import com.sun.jna.Callback;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u001c\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0013J2\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00190\u001dH\u0087\bø\u0001\u0000R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R,\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b0\u00078@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001f"}, d2 = {"Landroidx/graphics/shapes/Morph;", "", "start", "Landroidx/graphics/shapes/RoundedPolygon;", "end", "(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V", "_morphMatch", "", "Lkotlin/Pair;", "Landroidx/graphics/shapes/Cubic;", "morphMatch", "getMorphMatch$annotations", "()V", "getMorphMatch", "()Ljava/util/List;", "asCubics", "progress", "", "calculateBounds", "", "bounds", "approximate", "", "calculateMaxBounds", "forEachCubic", "", "mutableCubic", "Landroidx/graphics/shapes/MutableCubic;", Callback.METHOD_NAME, "Lkotlin/Function1;", "Companion", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nMorph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph\n*L\n1#1,342:1\n173#1,10:343\n*S KotlinDebug\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph\n*L\n-1#1:343,10\n*E\n"})
public final class Morph {
    public static final Morph$Companion Companion = new Morph$Companion(null);
    private final List<Pair<Cubic, Cubic>> _morphMatch;
    private final RoundedPolygon end;
    private final RoundedPolygon start;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Morph(RoundedPolygon roundedPolygon, RoundedPolygon roundedPolygon2) {
        roundedPolygon.getClass();
        roundedPolygon2.getClass();
        this.start = roundedPolygon;
        this.end = roundedPolygon2;
        this._morphMatch = Companion.match$graphics_shapes_release(roundedPolygon, roundedPolygon2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float[] calculateBounds$default(Morph morph, float[] fArr, boolean z8, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            fArr = new float[4];
        }
        if ((i9 & 2) != 0) {
            z8 = true;
        }
        return morph.calculateBounds(fArr, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float[] calculateMaxBounds$default(Morph morph, float[] fArr, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            fArr = new float[4];
        }
        return morph.calculateMaxBounds(fArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void forEachCubic$default(Morph morph, float f8, MutableCubic mutableCubic, Function1 function1, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            mutableCubic = new MutableCubic();
        }
        mutableCubic.getClass();
        function1.getClass();
        int size = morph.getMorphMatch().size();
        for (int i10 = 0; i10 < size; i10++) {
            mutableCubic.interpolate(morph.getMorphMatch().get(i10).getFirst(), morph.getMorphMatch().get(i10).getSecond(), f8);
            function1.invoke(mutableCubic);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final List<Pair<Cubic, Cubic>> match$graphics_shapes_release(RoundedPolygon roundedPolygon, RoundedPolygon roundedPolygon2) {
        return Companion.match$graphics_shapes_release(roundedPolygon, roundedPolygon2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Cubic> asCubics(float progress) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = this._morphMatch.size();
        Cubic cubic = null;
        Cubic cubic2 = null;
        int i9 = 0;
        while (i9 < size) {
            float[] fArr = new float[8];
            for (int i10 = 0; i10 < 8; i10++) {
                fArr[i10] = Utils.interpolate(this._morphMatch.get(i9).getFirst().getPoints()[i10], this._morphMatch.get(i9).getSecond().getPoints()[i10], progress);
            }
            Cubic cubic3 = new Cubic(fArr);
            if (cubic2 == null) {
                cubic2 = cubic3;
            }
            if (cubic != null) {
                listCreateListBuilder.add(cubic);
            }
            i9++;
            cubic = cubic3;
        }
        if (cubic != null && cubic2 != null) {
            listCreateListBuilder.add(CubicKt.Cubic(cubic.getAnchor0X(), cubic.getAnchor0Y(), cubic.getControl0X(), cubic.getControl0Y(), cubic.getControl1X(), cubic.getControl1Y(), cubic2.getAnchor0X(), cubic2.getAnchor0Y()));
        }
        return CollectionsKt.build(listCreateListBuilder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final float[] calculateBounds(float[] bounds, boolean approximate) {
        bounds.getClass();
        this.start.calculateBounds(bounds, approximate);
        float f8 = bounds[0];
        float f9 = bounds[1];
        float f10 = bounds[2];
        float f11 = bounds[3];
        this.end.calculateBounds(bounds, approximate);
        bounds[0] = Math.min(f8, bounds[0]);
        bounds[1] = Math.min(f9, bounds[1]);
        bounds[2] = Math.max(f10, bounds[2]);
        bounds[3] = Math.max(f11, bounds[3]);
        return bounds;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float[] calculateMaxBounds(float[] bounds) {
        bounds.getClass();
        this.start.calculateMaxBounds(bounds);
        float f8 = bounds[0];
        float f9 = bounds[1];
        float f10 = bounds[2];
        float f11 = bounds[3];
        this.end.calculateMaxBounds(bounds);
        bounds[0] = Math.min(f8, bounds[0]);
        bounds[1] = Math.min(f9, bounds[1]);
        bounds[2] = Math.max(f10, bounds[2]);
        bounds[3] = Math.max(f11, bounds[3]);
        return bounds;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final void forEachCubic(float f8, Function1<? super MutableCubic, Unit> function1) {
        function1.getClass();
        MutableCubic mutableCubic = new MutableCubic();
        int size = getMorphMatch().size();
        for (int i9 = 0; i9 < size; i9++) {
            mutableCubic.interpolate(getMorphMatch().get(i9).getFirst(), getMorphMatch().get(i9).getSecond(), f8);
            function1.invoke(mutableCubic);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List<Pair<Cubic, Cubic>> getMorphMatch() {
        return this._morphMatch;
    }

    @PublishedApi
    public static /* synthetic */ void getMorphMatch$annotations() {
    }

    @JvmOverloads
    public final float[] calculateBounds(float[] fArr) {
        fArr.getClass();
        return calculateBounds$default(this, fArr, false, 2, null);
    }

    @JvmOverloads
    public final float[] calculateBounds() {
        return calculateBounds$default(this, null, false, 3, null);
    }

    @JvmOverloads
    public final void forEachCubic(float progress, MutableCubic mutableCubic, Function1<? super MutableCubic, Unit> callback) {
        mutableCubic.getClass();
        callback.getClass();
        int size = getMorphMatch().size();
        for (int i9 = 0; i9 < size; i9++) {
            mutableCubic.interpolate(getMorphMatch().get(i9).getFirst(), getMorphMatch().get(i9).getSecond(), progress);
            callback.invoke(mutableCubic);
        }
    }
}
