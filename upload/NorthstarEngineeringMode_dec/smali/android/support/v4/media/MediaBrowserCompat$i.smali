.class public abstract Landroid/support/v4/media/MediaBrowserCompat$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$i$b;,
        Landroid/support/v4/media/MediaBrowserCompat$i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$i$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$i$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V

    new-instance p0, Landroid/support/v4/media/f;

    invoke-direct {p0, v0}, Landroid/support/v4/media/d;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i$b;)V

    return-void
.end method
