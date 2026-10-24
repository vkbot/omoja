.class public abstract Lw0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/widget/o2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw0/c0;

    invoke-direct {v0}, Lw0/c0;-><init>()V

    new-instance v0, Landroidx/appcompat/widget/o2;

    const/4 v1, 0x6

    const-class v2, Ljava/lang/Float;

    const-string v3, "translationAlpha"

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    new-instance v0, Landroidx/appcompat/widget/o2;

    const/4 v1, 0x7

    const-class v2, Landroid/graphics/Rect;

    const-string v3, "clipBounds"

    invoke-direct {v0, v2, v3, v1}, Landroidx/appcompat/widget/o2;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method
