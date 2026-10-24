.class public Lcom/mega/nexus/app/MegaSliceManager;
.super Ljava/lang/Object;
.source "MegaSliceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grantPermissionFromUser(Landroid/app/slice/SliceManager;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "manager"    # Landroid/app/slice/SliceManager;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "allSlices"    # Z

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/slice/SliceManager;->grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 13
    return-void
.end method
