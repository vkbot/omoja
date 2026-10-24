.class public abstract Lw0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw0/c0;

.field public static final b:Landroidx/appcompat/widget/r2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lw0/d0;

    invoke-direct {v0}, Lw0/d0;-><init>()V

    sput-object v0, Lw0/y;->a:Lw0/c0;

    goto :goto_0

    :cond_0
    new-instance v0, Lw0/c0;

    invoke-direct {v0}, Lw0/c0;-><init>()V

    sput-object v0, Lw0/y;->a:Lw0/c0;

    :goto_0
    new-instance v0, Landroidx/appcompat/widget/r2;

    const/4 v1, 0x6

    const-class v2, Ljava/lang/Float;

    const-string v3, "translationAlpha"

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/widget/r2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lw0/y;->b:Landroidx/appcompat/widget/r2;

    new-instance v0, Landroidx/appcompat/widget/r2;

    const/4 v1, 0x7

    const-class v2, Landroid/graphics/Rect;

    const-string v3, "clipBounds"

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/widget/r2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Lw0/y;->a:Lw0/c0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lw0/b0;->q(Landroid/view/View;IIII)V

    return-void
.end method
