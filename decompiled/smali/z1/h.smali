.class public final Lz1/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz1/h;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lz1/h;->c:Lcom/github/clans/fab/FloatingActionMenu;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lz1/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lz1/h;->c:Lcom/github/clans/fab/FloatingActionMenu;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lz1/h;->c:Lcom/github/clans/fab/FloatingActionMenu;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->k:Z

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
