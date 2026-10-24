.class public final Lr1/a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Lcom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/imageview/ShapeableImageView;)V
    .locals 0

    iput-object p1, p0, Lr1/a;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lr1/a;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object p1, p0, Lr1/a;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v0, p1, Lcom/google/android/material/imageview/ShapeableImageView;->l:Ly1/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/material/imageview/ShapeableImageView;->k:Ly1/h;

    if-nez v0, :cond_1

    new-instance v0, Ly1/h;

    iget-object v1, p1, Lcom/google/android/material/imageview/ShapeableImageView;->l:Ly1/n;

    invoke-direct {v0, v1}, Ly1/h;-><init>(Ly1/n;)V

    iput-object v0, p1, Lcom/google/android/material/imageview/ShapeableImageView;->k:Ly1/h;

    :cond_1
    iget-object v0, p1, Lcom/google/android/material/imageview/ShapeableImageView;->e:Landroid/graphics/RectF;

    iget-object p0, p0, Lr1/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/google/android/material/imageview/ShapeableImageView;->k:Ly1/h;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p1, Lcom/google/android/material/imageview/ShapeableImageView;->k:Ly1/h;

    invoke-virtual {p0, p2}, Ly1/h;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method
