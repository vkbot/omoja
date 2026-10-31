.class public final synthetic Lv0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/SpeedBoard/PPSView;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/SpeedBoard/PPSView;II)V
    .registers 4

    .line 1
    iput p3, p0, Lv0/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lv0/b;->c:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 4
    .line 5
    iput p2, p0, Lv0/b;->d:I

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
    iget v0, p0, Lv0/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv0/b;->c:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 7
    .line 8
    iget v1, p0, Lv0/b;->d:I

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/example/navistart/SpeedBoard/PPSView;->h(Lcom/example/navistart/SpeedBoard/PPSView;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lv0/b;->c:Lcom/example/navistart/SpeedBoard/PPSView;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/example/navistart/SpeedBoard/PPSView;->e:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 17
    .line 18
    iget v1, p0, Lv0/b;->d:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    invoke-virtual {v0, v1}, Lw1/e;->k(F)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
