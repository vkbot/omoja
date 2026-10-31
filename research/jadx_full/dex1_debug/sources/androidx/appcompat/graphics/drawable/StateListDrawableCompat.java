package androidx.appcompat.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources$Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.resources.Compatibility$Api21Impl;
import androidx.appcompat.resources.R$styleable;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.res.TypedArrayUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StateListDrawableCompat extends DrawableContainerCompat {
    private static final boolean DEBUG = false;
    private static final String TAG = "StateListDrawableCompat";
    private boolean mMutated;
    private StateListDrawableCompat$StateListState mStateListState;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StateListDrawableCompat(StateListDrawableCompat$StateListState stateListDrawableCompat$StateListState, Resources resources) {
        setConstantState(new StateListDrawableCompat$StateListState(stateListDrawableCompat$StateListState, this, resources));
        onStateChange(getState());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void inflateChildElements(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        int next;
        StateListDrawableCompat$StateListState stateListDrawableCompat$StateListState = this.mStateListState;
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next2 == 3) {
                return;
            }
            if (next2 == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, R$styleable.StateListDrawableItem);
                int resourceId = typedArrayObtainAttributes.getResourceId(R$styleable.StateListDrawableItem_android_drawable, -1);
                Drawable drawable = resourceId > 0 ? ResourceManagerInternal.get().getDrawable(context, resourceId) : null;
                typedArrayObtainAttributes.recycle();
                int[] iArrExtractStateSet = extractStateSet(attributeSet);
                if (drawable == null) {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    drawable = Compatibility$Api21Impl.createFromXmlInner(resources, xmlPullParser, attributeSet, resources$Theme);
                }
                stateListDrawableCompat$StateListState.addStateSet(iArrExtractStateSet, drawable);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateStateFromTypedArray(TypedArray typedArray) {
        StateListDrawableCompat$StateListState stateListDrawableCompat$StateListState = this.mStateListState;
        stateListDrawableCompat$StateListState.mChangingConfigurations |= Compatibility$Api21Impl.getChangingConfigurations(typedArray);
        stateListDrawableCompat$StateListState.mVariablePadding = typedArray.getBoolean(R$styleable.StateListDrawable_android_variablePadding, stateListDrawableCompat$StateListState.mVariablePadding);
        stateListDrawableCompat$StateListState.mConstantSize = typedArray.getBoolean(R$styleable.StateListDrawable_android_constantSize, stateListDrawableCompat$StateListState.mConstantSize);
        stateListDrawableCompat$StateListState.mEnterFadeDuration = typedArray.getInt(R$styleable.StateListDrawable_android_enterFadeDuration, stateListDrawableCompat$StateListState.mEnterFadeDuration);
        stateListDrawableCompat$StateListState.mExitFadeDuration = typedArray.getInt(R$styleable.StateListDrawable_android_exitFadeDuration, stateListDrawableCompat$StateListState.mExitFadeDuration);
        stateListDrawableCompat$StateListState.mDither = typedArray.getBoolean(R$styleable.StateListDrawable_android_dither, stateListDrawableCompat$StateListState.mDither);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addState(int[] iArr, Drawable drawable) {
        if (drawable != null) {
            this.mStateListState.addStateSet(iArr, drawable);
            onStateChange(getState());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources$Theme resources$Theme) {
        super.applyTheme(resources$Theme);
        onStateChange(getState());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public StateListDrawableCompat$StateListState cloneConstantState() {
        return new StateListDrawableCompat$StateListState(this.mStateListState, this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] extractStateSet(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i9 = 0;
        for (int i10 = 0; i10 < attributeCount; i10++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i10);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i11 = i9 + 1;
                if (!attributeSet.getAttributeBooleanValue(i10, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i9] = attributeNameResource;
                i9 = i11;
            }
        }
        return StateSet.trimStateSet(iArr, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStateCount() {
        return this.mStateListState.getChildCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable getStateDrawable(int i9) {
        return this.mStateListState.getChild(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStateDrawableIndex(int[] iArr) {
        return this.mStateListState.indexOfStateSet(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StateListDrawableCompat$StateListState getStateListState() {
        return this.mStateListState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getStateSet(int i9) {
        return this.mStateListState.mStateSets[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void inflate(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources$Theme resources$Theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, resources$Theme, attributeSet, R$styleable.StateListDrawable);
        setVisible(typedArrayObtainAttributes.getBoolean(R$styleable.StateListDrawable_android_visible, true), true);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        updateDensity(resources);
        typedArrayObtainAttributes.recycle();
        inflateChildElements(context, resources, xmlPullParser, attributeSet, resources$Theme);
        onStateChange(getState());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mStateListState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean onStateChange(@NonNull int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        int iIndexOfStateSet = this.mStateListState.indexOfStateSet(iArr);
        if (iIndexOfStateSet < 0) {
            iIndexOfStateSet = this.mStateListState.indexOfStateSet(StateSet.WILD_CARD);
        }
        return selectDrawable(iIndexOfStateSet) || zOnStateChange;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public void setConstantState(@NonNull DrawableContainerCompat$DrawableContainerState drawableContainerCompat$DrawableContainerState) {
        super.setConstantState(drawableContainerCompat$DrawableContainerState);
        if (drawableContainerCompat$DrawableContainerState instanceof StateListDrawableCompat$StateListState) {
            this.mStateListState = (StateListDrawableCompat$StateListState) drawableContainerCompat$DrawableContainerState;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public /* bridge */ /* synthetic */ DrawableContainerCompat$DrawableContainerState cloneConstantState() {
        return cloneConstantState();
    }

    public StateListDrawableCompat() {
        this(null, null);
    }

    public StateListDrawableCompat(@Nullable StateListDrawableCompat$StateListState stateListDrawableCompat$StateListState) {
        if (stateListDrawableCompat$StateListState != null) {
            setConstantState(stateListDrawableCompat$StateListState);
        }
    }
}
