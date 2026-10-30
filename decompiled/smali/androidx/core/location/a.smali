.class public final synthetic Landroidx/core/location/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/location/a;->a:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/location/a;->a:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
