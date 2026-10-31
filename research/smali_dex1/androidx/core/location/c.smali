.class public final synthetic Landroidx/core/location/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/location/c;->b:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/location/c;->b:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->a(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
