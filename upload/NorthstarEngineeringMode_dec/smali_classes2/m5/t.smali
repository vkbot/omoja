.class public final synthetic Lm5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lm5/y;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lm5/y;Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lm5/t;->c:I

    iput-object p1, p0, Lm5/t;->r:Lm5/y;

    iput-object p2, p0, Lm5/t;->x:Ljava/lang/String;

    iput-object p3, p0, Lm5/t;->y:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lm5/t;->c:I

    iget-object v1, p0, Lm5/t;->x:Ljava/lang/String;

    iget-object v2, p0, Lm5/t;->r:Lm5/y;

    iget-object p0, p0, Lm5/t;->y:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    iget-object v0, v2, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    invoke-virtual {v0, v1}, Lm5/z0;->h(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lm5/y;->K0(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    return-void

    :pswitch_0
    check-cast p0, Li5/z1;

    invoke-virtual {v2, v1, p0}, Lm5/y;->Q1(Ljava/lang/String;Li5/z1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
