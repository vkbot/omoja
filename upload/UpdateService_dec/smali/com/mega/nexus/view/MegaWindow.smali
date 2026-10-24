.class public Lcom/mega/nexus/view/MegaWindow;
.super Ljava/lang/Object;
.source "MegaWindow.java"


# static fields
.field public static final PRIVATE_FLAG_SHOW_FOR_ALL_USERS:I = 0x10

.field public static final PRIVATE_FLAG_SKIP_SCREENSHOT:I = 0x100000

.field public static final TYPE_NAVIGATION_BAR_PANEL:I = 0x7e8

.field public static final TYPE_SECURE_SYSTEM_OVERLAY:I = 0x7df


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrivateFlags(Landroid/view/Window;I)V
    .locals 0
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "flags"    # I

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 25
    return-void
.end method

.method public static addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flags"    # I

    .line 28
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 29
    return-void
.end method
