.class public final synthetic Lb1/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb1/k;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb1/l;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lb1/l;Ljava/lang/String;I)V
    .registers 4

    .line 1
    iput p3, p0, Lb1/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lb1/i;->c:Lb1/l;

    .line 4
    .line 5
    iput-object p2, p0, Lb1/i;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lb1/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb1/i;->c:Lb1/l;

    .line 7
    .line 8
    iget-object v1, p0, Lb1/i;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lb1/l;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_e
    iget-object v0, p0, Lb1/i;->c:Lb1/l;

    .line 16
    .line 17
    iget-object v1, p0, Lb1/i;->d:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lb1/l;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
