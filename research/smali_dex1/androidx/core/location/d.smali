.class public final synthetic Landroidx/core/location/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/core/util/Consumer;

.field public final synthetic d:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Landroid/location/Location;I)V
    .registers 4

    .line 1
    iput p3, p0, Landroidx/core/location/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/location/d;->c:Landroidx/core/util/Consumer;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/location/d;->d:Landroid/location/Location;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/core/location/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/core/location/d;->c:Landroidx/core/util/Consumer;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/core/location/d;->d:Landroid/location/Location;

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat;->a(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Landroidx/core/location/d;->c:Landroidx/core/util/Consumer;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/core/location/d;->d:Landroid/location/Location;

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->b(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
