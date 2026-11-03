package mega.widget.recyclerview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FlexibleDividerDecoration extends RecyclerView.ItemDecoration {
    private static final int[] ATTRS = {R.attr.listDivider};
    private static final int DEFAULT_SIZE = 2;
    private Builder mBuilder;
    protected ColorProvider mColorProvider;
    protected DividerType mDividerType;
    protected DrawableProvider mDrawableProvider;
    private Paint mPaint;
    protected PaintProvider mPaintProvider;
    protected boolean mShowLastDivider;
    protected SizeProvider mSizeProvider;
    protected VisibilityProvider mVisibilityProvider;

    public interface ColorProvider {
        int dividerColor(int i, RecyclerView recyclerView);
    }

    protected enum DividerType {
        DRAWABLE,
        PAINT,
        COLOR
    }

    public interface DrawableProvider {
        Drawable drawableProvider(int i, RecyclerView recyclerView);
    }

    public interface PaintProvider {
        Paint dividerPaint(int i, RecyclerView recyclerView);
    }

    public interface SizeProvider {
        int dividerSize(int i, RecyclerView recyclerView);
    }

    public interface VisibilityProvider {
        boolean shouldHideDivider(int i, RecyclerView recyclerView, boolean z);
    }

    static /* synthetic */ Drawable lambda$new$0(Drawable drawable, int i, RecyclerView recyclerView) {
        return drawable;
    }

    static /* synthetic */ int lambda$setSizeProvider$1(int i, RecyclerView recyclerView) {
        return 2;
    }

    protected abstract Rect getDividerBound(int i, RecyclerView recyclerView, View view);

    protected abstract void setItemOffsets(Rect rect, int i, RecyclerView recyclerView);

    protected FlexibleDividerDecoration(Builder builder) {
        this.mDividerType = DividerType.DRAWABLE;
        this.mBuilder = builder;
        if (builder.mPaintProvider != null) {
            this.mDividerType = DividerType.PAINT;
            this.mPaintProvider = builder.mPaintProvider;
        } else if (builder.mColorProvider != null) {
            this.mDividerType = DividerType.COLOR;
            this.mColorProvider = builder.mColorProvider;
            this.mPaint = new Paint();
            setSizeProvider(builder);
        } else {
            this.mDividerType = DividerType.DRAWABLE;
            if (builder.mDrawableProvider == null) {
                TypedArray typedArrayObtainStyledAttributes = builder.mContext.obtainStyledAttributes(ATTRS);
                final Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
                typedArrayObtainStyledAttributes.recycle();
                this.mDrawableProvider = new DrawableProvider() { // from class: mega.widget.recyclerview.FlexibleDividerDecoration$$ExternalSyntheticLambda0
                    @Override // mega.widget.recyclerview.FlexibleDividerDecoration.DrawableProvider
                    public final Drawable drawableProvider(int i, RecyclerView recyclerView) {
                        return FlexibleDividerDecoration.lambda$new$0(drawable, i, recyclerView);
                    }
                };
            } else {
                this.mDrawableProvider = builder.mDrawableProvider;
            }
            this.mSizeProvider = builder.mSizeProvider;
        }
        this.mVisibilityProvider = builder.mVisibilityProvider;
        this.mShowLastDivider = builder.mShowLastDivider;
    }

    private void setSizeProvider(Builder builder) {
        SizeProvider sizeProvider = builder.mSizeProvider;
        this.mSizeProvider = sizeProvider;
        if (sizeProvider == null) {
            this.mSizeProvider = new SizeProvider() { // from class: mega.widget.recyclerview.FlexibleDividerDecoration$$ExternalSyntheticLambda1
                @Override // mega.widget.recyclerview.FlexibleDividerDecoration.SizeProvider
                public final int dividerSize(int i, RecyclerView recyclerView) {
                    return FlexibleDividerDecoration.lambda$setSizeProvider$1(i, recyclerView);
                }
            };
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int childCount = this.mShowLastDivider ? recyclerView.getChildCount() : recyclerView.getChildCount() - 1;
        int i = -1;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= i) {
                if (ViewCompat.getAlpha(childAt) >= 1.0f && !this.mVisibilityProvider.shouldHideDivider(childAdapterPosition, recyclerView, this.mBuilder.mHasHead)) {
                    Rect dividerBound = getDividerBound(childAdapterPosition, recyclerView, childAt);
                    int i3 = AnonymousClass1.$SwitchMap$mega$widget$recyclerview$FlexibleDividerDecoration$DividerType[this.mDividerType.ordinal()];
                    if (i3 == 1) {
                        Drawable drawableDrawableProvider = this.mDrawableProvider.drawableProvider(childAdapterPosition, recyclerView);
                        drawableDrawableProvider.setBounds(dividerBound);
                        drawableDrawableProvider.draw(canvas);
                    } else if (i3 == 2) {
                        this.mPaint = this.mPaintProvider.dividerPaint(childAdapterPosition, recyclerView);
                        canvas.drawLine(dividerBound.left, dividerBound.top, dividerBound.right, dividerBound.bottom, this.mPaint);
                    } else if (i3 == 3) {
                        this.mPaint.setColor(this.mColorProvider.dividerColor(childAdapterPosition, recyclerView));
                        this.mPaint.setStrokeWidth(this.mSizeProvider.dividerSize(childAdapterPosition, recyclerView));
                        canvas.drawLine(dividerBound.left, dividerBound.top, dividerBound.right, dividerBound.bottom, this.mPaint);
                    }
                }
                i = childAdapterPosition;
            }
        }
    }

    /* JADX INFO: renamed from: mega.widget.recyclerview.FlexibleDividerDecoration$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$mega$widget$recyclerview$FlexibleDividerDecoration$DividerType;

        static {
            int[] iArr = new int[DividerType.values().length];
            $SwitchMap$mega$widget$recyclerview$FlexibleDividerDecoration$DividerType = iArr;
            try {
                iArr[DividerType.DRAWABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$mega$widget$recyclerview$FlexibleDividerDecoration$DividerType[DividerType.PAINT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$mega$widget$recyclerview$FlexibleDividerDecoration$DividerType[DividerType.COLOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        setItemOffsets(rect, recyclerView.getChildAdapterPosition(view), recyclerView);
    }

    public static class Builder<T extends Builder> {
        private ColorProvider mColorProvider;
        private Context mContext;
        private DrawableProvider mDrawableProvider;
        private PaintProvider mPaintProvider;
        protected Resources mResources;
        private SizeProvider mSizeProvider;
        private boolean mHasHead = false;
        private VisibilityProvider mVisibilityProvider = new VisibilityProvider() { // from class: mega.widget.recyclerview.FlexibleDividerDecoration$Builder$$ExternalSyntheticLambda4
            @Override // mega.widget.recyclerview.FlexibleDividerDecoration.VisibilityProvider
            public final boolean shouldHideDivider(int i, RecyclerView recyclerView, boolean z) {
                return FlexibleDividerDecoration.Builder.lambda$new$0(i, recyclerView, z);
            }
        };
        private boolean mShowLastDivider = false;

        private T colorProvider(ColorProvider colorProvider) {
            this.mColorProvider = colorProvider;
            return this;
        }

        private T drawableProvider(DrawableProvider drawableProvider) {
            this.mDrawableProvider = drawableProvider;
            return this;
        }

        static /* synthetic */ int lambda$color$2(int i, int i2, RecyclerView recyclerView) {
            return i;
        }

        static /* synthetic */ Drawable lambda$drawable$3(Drawable drawable, int i, RecyclerView recyclerView) {
            return drawable;
        }

        static /* synthetic */ boolean lambda$new$0(int i, RecyclerView recyclerView, boolean z) {
            return i == 0 && z;
        }

        static /* synthetic */ Paint lambda$paint$1(Paint paint, int i, RecyclerView recyclerView) {
            return paint;
        }

        static /* synthetic */ int lambda$size$4(int i, int i2, RecyclerView recyclerView) {
            return i;
        }

        static /* synthetic */ boolean lambda$visibilityDivider$5(boolean z, int i, RecyclerView recyclerView, boolean z2) {
            return z;
        }

        private T paintProvider(PaintProvider paintProvider) {
            this.mPaintProvider = paintProvider;
            return this;
        }

        private T sizeProvider(SizeProvider sizeProvider) {
            this.mSizeProvider = sizeProvider;
            return this;
        }

        private T visibilityProvider(VisibilityProvider visibilityProvider) {
            this.mVisibilityProvider = visibilityProvider;
            return this;
        }

        public T hasHeadDivider(boolean z) {
            this.mHasHead = z;
            return this;
        }

        public T showLastDivider() {
            this.mShowLastDivider = true;
            return this;
        }

        public Builder(Context context) {
            this.mContext = context;
            this.mResources = context.getResources();
        }

        public T paint(final Paint paint) {
            return (T) paintProvider(new PaintProvider() { // from class: mega.widget.recyclerview.FlexibleDividerDecoration$Builder$$ExternalSyntheticLambda5
                @Override // mega.widget.recyclerview.FlexibleDividerDecoration.PaintProvider
                public final Paint dividerPaint(int i, RecyclerView recyclerView) {
                    return FlexibleDividerDecoration.Builder.lambda$paint$1(paint, i, recyclerView);
                }
            });
        }

        public T color(final int i) {
            return (T) colorProvider(new ColorProvider() { // from class: mega.widget.recyclerview.FlexibleDividerDecoration$Builder$$ExternalSyntheticLambda3
                @Override // mega.widget.recyclerview.FlexibleDividerDecoration.ColorProvider
                public final int dividerColor(int i2, RecyclerView recyclerView) {
                    return FlexibleDividerDecoration.Builder.lambda$color$2(i, i2, recyclerView);
                }
            });
        }

        public T colorResId(int i) {
            return (T) color(this.mResources.getColor(i, null));
        }

        public T drawable(int i) {
            return (T) drawable(this.mResources.getDrawable(i, null));
        }

        public T drawable(final Drawable drawable) {
            return (T) drawableProvider(new DrawableProvider() { // from class: mega.widget.recyclerview.FlexibleDividerDecoration$Builder$$ExternalSyntheticLambda2
                @Override // mega.widget.recyclerview.FlexibleDividerDecoration.DrawableProvider
                public final Drawable drawableProvider(int i, RecyclerView recyclerView) {
                    return FlexibleDividerDecoration.Builder.lambda$drawable$3(drawable, i, recyclerView);
                }
            });
        }

        public T size(final int i) {
            return (T) sizeProvider(new SizeProvider() { // from class: mega.widget.recyclerview.FlexibleDividerDecoration$Builder$$ExternalSyntheticLambda1
                @Override // mega.widget.recyclerview.FlexibleDividerDecoration.SizeProvider
                public final int dividerSize(int i2, RecyclerView recyclerView) {
                    return FlexibleDividerDecoration.Builder.lambda$size$4(i, i2, recyclerView);
                }
            });
        }

        public T sizeResId(int i) {
            return (T) size(this.mResources.getDimensionPixelSize(i));
        }

        public T visibilityDivider(final boolean z) {
            return (T) visibilityProvider(new VisibilityProvider() { // from class: mega.widget.recyclerview.FlexibleDividerDecoration$Builder$$ExternalSyntheticLambda0
                @Override // mega.widget.recyclerview.FlexibleDividerDecoration.VisibilityProvider
                public final boolean shouldHideDivider(int i, RecyclerView recyclerView, boolean z2) {
                    return FlexibleDividerDecoration.Builder.lambda$visibilityDivider$5(z, i, recyclerView, z2);
                }
            });
        }

        protected void checkBuilderParams() {
            if (this.mPaintProvider != null) {
                if (this.mColorProvider != null) {
                    throw new IllegalArgumentException("Use setColor method of Paint class to specify line color. Do not provider ColorProvider if you set PaintProvider.");
                }
                if (this.mSizeProvider != null) {
                    throw new IllegalArgumentException("Use setStrokeWidth method of Paint class to specify line size. Do not provider SizeProvider if you set PaintProvider.");
                }
            }
        }
    }
}
