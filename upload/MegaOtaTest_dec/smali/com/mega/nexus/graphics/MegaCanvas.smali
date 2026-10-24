.class public Lcom/mega/nexus/graphics/MegaCanvas;
.super Ljava/lang/Object;
.source "MegaCanvas.java"


# static fields
.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final MATRIX_SAVE_FLAG:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static save(Landroid/graphics/Canvas;I)I
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "saveFlags"    # I

    .line 14
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    return v0
.end method
