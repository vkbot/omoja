.class public final Lrx/exceptions/a;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final synthetic u:I

.field public final v:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lrx/exceptions/a;->u:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ly1/l;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lrx/exceptions/a;->v:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final K1()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrx/exceptions/a;->u:I

    iget-object p0, p0, Lrx/exceptions/a;->v:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ljava/io/PrintStream;

    return-object p0

    :goto_0
    check-cast p0, Ljava/io/PrintWriter;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final L1(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lrx/exceptions/a;->u:I

    iget-object p0, p0, Lrx/exceptions/a;->v:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void

    :goto_0
    check-cast p0, Ljava/io/PrintWriter;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
