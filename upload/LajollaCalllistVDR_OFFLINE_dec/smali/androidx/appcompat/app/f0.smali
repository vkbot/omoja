.class public Landroidx/appcompat/app/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Li0/f;

    invoke-direct {v0, p0}, Li0/f;-><init>(Landroidx/appcompat/app/f0;)V

    iput-object v0, p0, Landroidx/appcompat/app/f0;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/f0;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(III)Landroidx/appcompat/app/f0;
    .locals 2

    new-instance v0, Landroidx/appcompat/app/f0;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(IIIIZ)Landroidx/appcompat/app/f0;
    .locals 7

    const/4 v4, 0x0

    new-instance v6, Landroidx/appcompat/app/f0;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v6, p0}, Landroidx/appcompat/app/f0;-><init>(Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method public a(I)Li0/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(I)Li0/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
