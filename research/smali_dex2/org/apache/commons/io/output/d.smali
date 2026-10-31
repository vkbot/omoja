.class public final synthetic Lorg/apache/commons/io/output/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IORunnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/commons/io/output/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/commons/io/output/d;->b:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

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
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/commons/io/output/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/io/output/d;->b:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->b(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    iget-object v0, p0, Lorg/apache/commons/io/output/d;->b:Lorg/apache/commons/io/output/UncheckedFilterOutputStream;

    .line 13
    .line 14
    invoke-static {v0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->V(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method
