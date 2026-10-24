.class public final Lrx/exceptions/a;
.super Lcom/google/android/material/slider/h;
.source "SourceFile"


# instance fields
.field public final synthetic x:I

.field public final y:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lrx/exceptions/a;->x:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/h;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lrx/exceptions/a;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final J1()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lrx/exceptions/a;->x:I

    iget-object v1, p0, Lrx/exceptions/a;->y:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Ljava/io/PrintStream;

    return-object v1

    :goto_0
    check-cast v1, Ljava/io/PrintWriter;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final K1(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lrx/exceptions/a;->x:I

    iget-object v1, p0, Lrx/exceptions/a;->y:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void

    :goto_0
    check-cast v1, Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
