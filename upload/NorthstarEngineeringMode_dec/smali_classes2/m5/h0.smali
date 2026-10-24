.class public final synthetic Lm5/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lm5/h0;->a:I

    iput-object p1, p0, Lm5/h0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm5/h0;->a:I

    iget-object p0, p0, Lm5/h0;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lm5/o0$a;

    invoke-static {p0, p1}, Lm5/o0;->C(Ljava/lang/String;Lm5/o0$a;)Lm5/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lm5/o0$a;

    new-instance v0, Lm5/o0$d;

    invoke-direct {v0, p0, p1}, Lm5/o0$d;-><init>(Ljava/lang/String;Lm5/o0$a;)V

    return-object v0

    :pswitch_1
    check-cast p1, Lm5/o0$a;

    new-instance v0, Lm5/o0$d;

    invoke-direct {v0, p0, p1}, Lm5/o0$d;-><init>(Ljava/lang/String;Lm5/o0$a;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
