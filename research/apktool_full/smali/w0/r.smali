.class public final synthetic Lw0/r;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lw0/x;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lw0/x;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, Lw0/r;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/r;->c:Lw0/x;

    .line 4
    .line 5
    iput-object p2, p0, Lw0/r;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput p3, p0, Lw0/r;->e:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lw0/r;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/r;->d:Ljava/lang/String;

    .line 7
    .line 8
    iget v1, p0, Lw0/r;->e:I

    .line 9
    .line 10
    iget-object v2, p0, Lw0/r;->c:Lw0/x;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v0}, Lw0/x;->Z(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lw0/r;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget v1, p0, Lw0/r;->e:I

    .line 19
    .line 20
    iget-object v2, p0, Lw0/r;->c:Lw0/x;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v0}, Lw0/x;->Z(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
