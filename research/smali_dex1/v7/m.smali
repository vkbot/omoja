.class public final Lv7/m;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final b:Lv7/o;

.field public final c:Ln7/e;


# direct methods
.method public constructor <init>(Lv7/o;Ln7/e;I)V
    .registers 5

    .line 1
    iput p3, p0, Lv7/m;->a:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lv7/m;->b:Lv7/o;

    .line 10
    .line 11
    iput-object p2, p0, Lv7/m;->c:Ln7/e;

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object p3, p1, Lv7/o;->e:Lv7/n;

    .line 18
    .line 19
    if-eqz p3, :cond_16

    .line 20
    .line 21
    const/4 p3, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p3, 0x0

    .line 24
    :goto_17
    const-string v0, "success rate ejection config is null"

    .line 25
    .line 26
    invoke-static {v0, p3}, Lo4/b;->d(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lv7/m;->b:Lv7/o;

    .line 30
    .line 31
    iput-object p2, p0, Lv7/m;->c:Ln7/e;

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method
